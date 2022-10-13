package com.member.beans;

import java.util.ArrayList;

public class MemberManager {
    ArrayList<MemberBean> ml = new ArrayList<>();
    
    //멤버 추가하는 메소드
    public void add(MemberBean member){
        ml.add(member);
    }
    
    public ArrayList<MemberBean> getList(){
        return ml;
    }
}
