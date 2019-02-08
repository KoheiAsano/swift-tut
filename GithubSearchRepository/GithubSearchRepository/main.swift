//
//  main.swift
//  GithubSearchRepository
//
//  Created by asako on 2019/02/08.
//  Copyright © 2019 asako. All rights reserved.
//

import Foundation

print("Enter your query here>", terminator: "")

guard let keyword = readLine(strippingNewline: true) else {
  exit(1)
}

let client = GitHubClient()

let request = GitHubAPI.SearchRepositories(keyword: keyword)


client.send(request: request) {result in
  switch result {
  case let .success(response):
    for item in response.items {
      print(item.owner.login + "/" + item.name)
    }
    exit(0)
  case let .failure(error):
    print(error)
    exit(1)
  }
}
let timeoutInterval = 60

Thread.sleep(forTimeInterval: timeoutInterval)

print("Connection timeout")
exit(1)
