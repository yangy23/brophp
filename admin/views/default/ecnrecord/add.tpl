<p align="right"><a href="<{$url}>/index/bomcode/<{$bomcode}>">返回</a></p>
<center><h2>往&nbsp;<{$bomname}>&nbsp;BOM添加ECN变更记录</h2></center>
<form action="<{$url}>/insert/bomcode/<{$bomcode}>" method="post" onsubmit="return rowcount()" >
	ECN单号：<input type="text" name="ecn_num"><br><br>
	变更描述：<textarea cols="40" rows="5" name="description"></textarea><br><br>
		<input type="hidden" name="bomcode" value="<{$bomcode}>">
		<input type="hidden" name="ecnrectablename" value="<{$ecnrectablename}>">
		<input type="hidden" id="count" name="count" >
	<input type="submit" name="sub" value="加入变更表" >
	
<table align="center" width="100%" border="1" cellpadding="0" cellspacing="1" id="tb" >
	<tbody>
	<caption><h3>变更详细清单</h3></caption>
	</tbody>
	<tbody>
		<tr>
			<td colspan="8" ></td>	
			<td colspan="1" align="center"><input type="button" name="additem" value="添加" onclick="addrow()" ></td>
			<td colspan="1" align="center"><input type="button" name="delitem" value="删除" onclick="delrow()" ></td>
		</tr>
	</tbody>
	<tbody>
		<tr>
			<th>ITEM</th>
			<th>更改原因</th>
			<th>更改描述</th>
			<th>动作</th>
			<th>物料编码</th>
			<th>新数量</th>
			<th>新位号列表</th>
			<th>新替代料</th>
			<th>执行方式</th>
			<th>旧料处理方式</th>
		</tr>
	</tbody>
	<tbody>
		<tr>
			<td><div align="center" >1</div></td>
			<td><div align="center" ><input type="text" name="reason1" id="reason1" size="10" ></div></td>
			<td><div align="center" ><input type="text" name="description1" id="description1" ></div></td>
			<td><div align="center" ><input type="text" name="act1" id="act1" size="10" ></div></td>
			<td><div align="center" ><input type="text" name="partcode1" id="partcode1" size="10" ></div></td>
			<td><div align="center" ><input type="text" name="new_num1" id="new_num1" size="5" ></div></td>
			<td><div align="center" ><input type="text" name="new_refs1" id="new_refs1" ></div></td>
			<td><div align="center" ><input type="text" name="new_substitute1" id="new_substitute1" size="10" ></div></td>
			<td><div align="center" ><input type="text" name="action_type1" id="action_type1" size="10" ></div></td>
			<td><div align="center" ><input type="text" name="oldpart_dealing1" id="oldpart_dealing1" size="10" ></div></td>
		</tr>
	</tbody>
</table>
</form>

<script type="text/javascript">
function rowcount(){
	var k=tb.rows.length-2;
	document.getElementById("count").value = k;
}
function delrow(){
	var j=tb.rows.length;
	if(j>3){
		tb.deleteRow(j-1);
		i=i-1;
	}
//alert(i);
}
//var i=1;
var i=2;
function addrow(){
    	var x=document.getElementById('tb').insertRow(i+1);
	var h1=x.insertCell(0);
	var h2=x.insertCell(1);
	var h3=x.insertCell(2);
	var h4=x.insertCell(3);
	var h5=x.insertCell(4);
	var h6=x.insertCell(5);
	var h7=x.insertCell(6);
	var h8=x.insertCell(7);
	var h9=x.insertCell(8);
	var h10=x.insertCell(9);
	var h11=x.insertCell(10);
	h1.innerHTML="<div align=center>"+(i+0)+"</div>";
	h2.innerHTML="<div align=center><input name=reason"+(i+0)+" type=text size=10></div>";
	h3.innerHTML="<div align=center><input name=description"+(i+0)+" type=text ></div>";
	h4.innerHTML="<div align=center><input name=act"+(i+0)+" type=text size=10></div>";
	h5.innerHTML="<div align=center><input name=partcode"+(i+0)+" type=text size=10></div>";
	h6.innerHTML="<div align=center><input name=new_num"+(i+0)+" type=text size=5></div>";
	h7.innerHTML="<div align=center><input name=new_refs"+(i+0)+" type=text ></div>";
	h8.innerHTML="<div align=center><input name=new_substitute"+(i+0)+" type=text size=10></div>";
	h9.innerHTML="<div align=center><input name=action_type"+(i+0)+" type=text size=10></div>";
	h10.innerHTML="<div align=center><input name=oldpart_dealing"+(i+0)+" type=text size=10></div>";
	//i=i+1;
	i=i+1;
	//alert(i);
	x.bgColor="#ffffff"
}
</script>
