package com.example.service;

import com.example.domain.Board;

import java.util.List;

public interface BoardService {
    public List<Board> getBoardList(Board board);
    public void insertBoard(Board board);
    public Board getBoard(Board board);
    public void updateBoard(Board board);
    public void deleteBoard(Board board);
}
