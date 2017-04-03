package com.example.players.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.example.domain.Manchester;
import com.example.domain.Players;
import com.example.mapper.ManchesterMapper;
import com.example.mapper.PlayersMapper;

@Service
public class PlayersRegisterService {

	@Autowired
	PlayersMapper playersMapper;
	
	@Autowired
	ManchesterMapper manchesterMapper;
	
	public void register(Players players, BindingResult errors){
		
		if(players.getIdno() != null){
			Manchester manchester = manchesterMapper.selectByIdno(players.getIdno());
			if(manchester == null)
				errors.reject("InvalidIdno", "유효한 Idno가 아닙니다.");
		}
		if(!errors.hasErrors())
			playersMapper.insert(players);
	}
	
}
