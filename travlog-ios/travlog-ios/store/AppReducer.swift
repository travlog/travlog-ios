//
//  AppReducer.swift
//  travlog-ios
//
//  Created by jin on 2018. 6. 2..
//  Copyright © 2018년 travlog. All rights reserved.
//

import ReSwift

func AppReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState(name: "", username: "", userId: -1)
    switch action {
    case let action as FetchUser:
        state.name = action.name
        state.username = action.username
        state.userId = action.userId
    default:
        break
    }
    
    return state
}
