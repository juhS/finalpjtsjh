package com.kh.batterflow.member.service;

import org.springframework.stereotype.Repository;

@Repository
public class RandomServiceImpl implements RandomService{

	@Override
	public int randomNumber(int n1, int n2) {
		return (int)(Math.random() * (n2 - n1 + 1)) + n1;
	}

}
