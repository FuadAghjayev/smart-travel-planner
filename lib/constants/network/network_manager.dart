import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkManager {
  static final NetworkManager _instance = NetworkManager._internal();
  static NetworkManager get instance => _instance;
  final Dio _dio = Dio();

  NetworkManager._internal() {
    _initializeDio();
  }

  void _initializeDio() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        NavigatorState? navigator = Navigator.of(globalContext!);
        if (navigator.mounted) {
          showDialog(
            context: globalContext!,
            barrierDismissible: false,
            builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        _hideLoading();
        return handler.next(response);
      },
      onError: (error, handler) {
        _hideLoading();
        _showErrorDialog(error.message ?? 'An error occurred');
        return handler.next(error);
      },
    ));
  }

  static BuildContext? globalContext;

  void setContext(BuildContext context) {
    globalContext = context;
  }

  void _hideLoading() {
    if (globalContext != null && Navigator.canPop(globalContext!)) {
      Navigator.pop(globalContext!);
    }
  }

  Future<void> _showErrorDialog(String message) async {
    if (globalContext == null) return;

    return showDialog(
      context: globalContext!,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<T?> request<T>({
    required String url,
    required String method,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.request(
        url,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(method: method),
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response.data as T;
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw Exception('Unexpected error: $e');
    }
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Exception('Connection timeout');
      case DioExceptionType.sendTimeout:
        return Exception('Send timeout');
      case DioExceptionType.receiveTimeout:
        return Exception('Receive timeout');
      case DioExceptionType.badResponse:
        return Exception('Bad response: ${error.response?.statusCode}');
      case DioExceptionType.cancel:
        return Exception('Request cancelled');
      default:
        return Exception('Network error: ${error.message}');
    }
  }
}