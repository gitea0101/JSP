package addr;

import java.util.ArrayList;
import java.util.List;

public class AddrManager {
	// 주소록 목록을 관리하기 위한 ArrayList
	List<AddrBean> addrlist = new ArrayList<AddrBean>();
	
	// 주소록 추가 메서드
	public void add(AddrBean ab) {
		addrlist.add(ab);
	}
	
	// 주소록 목록 전달 메서드
	public List<AddrBean> getAddrList() {
		return addrlist;
	}
	
	// id와 pwd를 검사하여 있을경우 addrlist에 저장된 값을 리턴하는 메서드
	public AddrBean getAddr(String userid, String userpwd) {
		for(AddrBean ab : addrlist) {
			if(ab.getUserid().equals(userid) && ab.getUserpwd().equals(userpwd))
				return ab;
		}
		return null;
	}
}
