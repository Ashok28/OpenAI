//
//  OpenAI+Extensions.swift
//
//
//  Created by Maxime Maheo on 10/02/2023.
//

import Foundation

@available(iOS 13.0, *)
@available(macOS 10.15, *)
@available(tvOS 13.0, *)
@available(watchOS 6.0, *)
public extension OpenAI {
    func chatCompletions(
        query: ChatQuery,
        timeoutInterval: TimeInterval = 60.0
    ) async throws -> ChatCompletion {
        try await withCheckedThrowingContinuation { continuation in
            chatCompletions(query: query, timeoutInterval: timeoutInterval) { result in
                switch result {
                case let .success(success):
                    return continuation.resume(returning: success)
                case let .failure(failure):
                    return continuation.resume(throwing: failure)
                }
            }
        }
    }

    func completions(
        query: CompletionsQuery,
        timeoutInterval: TimeInterval = 60.0
    ) async throws -> CompletionsResult {
        try await withCheckedThrowingContinuation { continuation in
            completions(query: query, timeoutInterval: timeoutInterval) { result in
                switch result {
                case let .success(success):
                    return continuation.resume(returning: success)
                case let .failure(failure):
                    return continuation.resume(throwing: failure)
                }
            }
        }
    }

    func images(
        query: ImagesQuery,
        timeoutInterval: TimeInterval = 60.0
    ) async throws -> ImagesResult {
        try await withCheckedThrowingContinuation { continuation in
            images(query: query, timeoutInterval: timeoutInterval) { result in
                switch result {
                case let .success(success):
                    return continuation.resume(returning: success)
                case let .failure(failure):
                    return continuation.resume(throwing: failure)
                }
            }
        }
    }

    func embeddings(
        query: EmbeddingsQuery,
        timeoutInterval: TimeInterval = 60.0
    ) async throws -> EmbeddingsResult {
        try await withCheckedThrowingContinuation { continuation in
            embeddings(query: query, timeoutInterval: timeoutInterval) { result in
                switch result {
                case let .success(success):
                    return continuation.resume(returning: success)
                case let .failure(failure):
                    return continuation.resume(throwing: failure)
                }
            }
        }
    }
}
