package com.spring.ex03;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.FileSystemResource;

public class MemberTest1 {
	public static void main(String[] args) {
		BeanFactory bf = new XmlBeanFactory(new FileSystemResource("member.xml"));
		MemberService sv = (MemberService) bf.getBean("memberService");
		sv.listMembers();
	}

}
