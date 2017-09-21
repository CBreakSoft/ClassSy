package com.cp.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.cp.model.CTable;
import com.cp.query.ChengJiQuery;
import com.cp.query.PageList;
import com.cp.service.IChengJiService;
import com.cp.service.IKeChengService;

public class ScoreAction extends CRUDAction<CTable>{

	private CTable ctable;
	private IChengJiService chengJiService;
	private IKeChengService keChengService;
	private ChengJiQuery baseQuery = new ChengJiQuery();
	private PageList pageList;
	private String sid;
	private String kid;
	private Double stduCj;
	public CTable getCtable() {
		return ctable;
	}

	public void setCtable(CTable ctable) {
		this.ctable = ctable;
	}

	public IChengJiService getChengJiService() {
		return chengJiService;
	}

	public void setChengJiService(IChengJiService chengJiService) {
		this.chengJiService = chengJiService;
	}

	public IKeChengService getKeChengService() {
		return keChengService;
	}

	public void setKeChengService(IKeChengService keChengService) {
		this.keChengService = keChengService;
	}

	public ChengJiQuery getBaseQuery() {
		return baseQuery;
	}

	public void setBaseQuery(ChengJiQuery baseQuery) {
		this.baseQuery = baseQuery;
	}

	public PageList getPageList() {
		return pageList;
	}

	public void setPageList(PageList pageList) {
		this.pageList = pageList;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getKid() {
		return kid;
	}

	public void setKid(String kid) {
		this.kid = kid;
	}

	public Double getStduCj() {
		return stduCj;
	}

	public void setStduCj(Double stduCj) {
		this.stduCj = stduCj;
	}
	//显示信息
	/*public void ChengJilist()throws Exception
	{
	 this.pageList=chengJiService.findByQuery(baseQuery);  
	 putContext("allCnames", keChengService.getAll());
	}*/
	@Override
	public CTable getModel() {
		return ctable;
	}

	@Override
	public String save() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(stduCj);
		System.out.println(sid);
		System.out.println(kid);
		
		try {
			//ctable = chengJiService.findBystucou(stuNum, couName);
			//输入成绩
			System.out.println("2:"+stduCj);
			ctable.setCcj(stduCj);
			System.out.println("需要更新的成绩："+ctable.getCcj());
			chengJiService.update(ctable);
			out.print("{\"success\":true,\"msg\":\"保存成功\"}");
			return RELOAD;
		} catch (Exception e) {
			e.printStackTrace();
			out.print("{\"success\":false,\"msg\":\"保存失败\"}");
		}
		return NONE;
	}

	@Override
	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void list() throws Exception {
		 logger.debug("list");
		 this.pageList=chengJiService.findByQuery(baseQuery);  
		 putContext("allCnames", keChengService.getAll());
	}
	public String list1()throws Exception
	{
	 this.pageList=chengJiService.findByQuery(baseQuery);  
	 putContext("allCnames", keChengService.getAll());
	 return "list";
	}
	
}
