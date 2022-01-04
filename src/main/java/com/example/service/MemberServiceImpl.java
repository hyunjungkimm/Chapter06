package com.example.service;

import com.example.domain.Member;
import com.example.persistence.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MemberServiceImpl implements MemberService{

    @Autowired
    private MemberRepository memberRepo;

    @Override
    public Member getMember(Member member) {
        Optional<Member> findMember = memberRepo.findById(member.getId());
        if(findMember.isPresent()){
            return findMember.get();
        }else{
            return null;
        }
    }
}
