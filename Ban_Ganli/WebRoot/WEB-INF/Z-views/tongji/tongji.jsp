<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>课程信息管理界面</title>
    <%@include file="/WEB-INF/Z-views/common/head.jsp"%> 
  </head>
<body>
<br/>
<center>
<br/>
<br/>
            <s:form id="domainForm" action="banji_Banlist.action" theme="simple">
                       学号: <s:textfield name="baseQuery.bname" placeholder="名称" />&nbsp;&nbsp;
                      统计方式 <s:select 
						
						 id="ktable.knature"
                         name="ktable.knature"
                         headerKey="-1" 
                         list="#{'':'---------请选择---------','最高分':'最高分','最低分':'最低分','平均分':'平均分','不及格':'不及格'}"
                         required="true"/>
			<a href="javascript:;" onclick="go(1);" class="add">搜索
			</a>&nbsp;&nbsp;
			<a href="banji_input.action" class="add">添加</a>
			<br/>&nbsp;&nbsp;
			<br/>
               <table border="1" align="center">
                 <tr style="background-color: PowderBlue;"><!--style="background-color: DodgerBlue;"  -->
					<th width="11%" ><span><strong>学&nbsp;号</strong></span></th>
					<th width="11%" ><span><strong>姓名</strong></span></th>
					<th width="8%" ><span><strong>总学分</strong></span></th>
					<th width="11%" ><span><strong>课程</strong></span></th>
					<th width="11%" ><span><strong>密码</strong></span></th>
					<th width="11%" ><span><strong>联系电话</strong></span></th>
					<th width="11%" ><span><strong>家庭住址</strong></span></th>
					<th width="11%" ><span><strong>班级编号</strong></span></th>
					<th colspan="2" width="11%"  ><span><strong>操作</strong></span></th>
				</tr>
				<s:iterator value="pageList.rows" status="st">
					<tr style="background-color: white;">
						<td>${sid}</td>
						<td>${sname}</td>
						<td>${ssex}</td>
						<td>${spassword}</td>
						<td>${slxdh}</td>
						<td>${sjtzz}</td>
						<td>${sName}</td>
						<td><button type="button" class="btn1"
								onclick="updateDomain('role_input.action?roleId=${roleId}');">编辑</button></td>
						<td><button type="button" class="btn1"
								onclick="deleteDomain('role_delete.action?roleId=${roleId}');">删除</button></td>
					</tr>
				</s:iterator>
               </table>
               </s:form>
 </center>
</body>
<%@include file="/WEB-INF/Z-views/common/tail.jsp"%>
</html>
