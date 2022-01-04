package com.example.exception;

import com.example.domain.Board;

public class BoardNotFoundException extends BoardException {
    private static final long serialVersionUID = 1L;

    public BoardNotFoundException(String message){
        super(message);
    }
}
