<html>
<META HTTP-EQUIV="Content-Type" content="text/html; charset=gb2312">
<TITLE>WinWebMail</TITLE>
<script language="JavaScript">

	function doZoom(size) {
		document.getElementById('zoom').style.fontSize = size + 'px'
	}

	var DOM = (document.getElementById) ? 1 : 0;
	var NS4 = (document.layers) ? 1 : 0;
	var IE4 = 0;
	if (document.all) {
		IE4 = 1;
		DOM = 0;
	}

	var win = window;
	var n = 0;

	function findIt() {
		if (document.getElementById("searchstr").value != "")
			findInPage(document.getElementById("searchstr").value);
	}

	function findInPage(str) {
		var txt, i, found;

		if (str == "")
			return false;

		if (DOM) {
			win.find(str, false, true);
			return true;
		}

		if (NS4) {
			if (!win.find(str))
				while (win.find(str, false, true))
					n++;
			else
				n++;

			if (n == 0)
				alert("未找到指定内容.");
		}

		if (IE4) {
			txt = win.document.body.createTextRange();

			for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
				txt.moveStart("character", 1);
				txt.moveEnd("textedit");
			}

			if (found) {
				txt.moveStart("character", -1);
				txt.findText(str);
				txt.select();
				txt.scrollIntoView();
				n++;
			} else {
				if (n > 0) {
					n = 0;
					findInPage(str);
				} else
					alert("未找到指定内容.");
			}
		}

		return false;
	}

</script>

<BODY>
	<br>
	<div align="center">
		<table width="90%" border="0" align="center" cellspacing="0"
			bgcolor="#EFF7FF" style='border: 1px #8CA5B5 solid;' id="zoom">
			<tr bgcolor="#DBEAF5">
				<td height="50" style='border-bottom: 1px #8CA5B5 solid;'>
					<div align="center">
						<font class="s" color="#104A7B"> <b>帮 助 </b>
					</div>
					<div align="center">
						<table width="98%">
							<tr>
								<td align="left"><input type="text" id="searchstr"
									name="searchstr" class="textbox" size="10"> <input
									type="button" value="页内查找" onclick="javascript:findIt();"
									class="sbttn"></td>
								<td align="right">查看:[ <a href="javascript:doZoom(16)">大字
								</a> <a href="javascript:doZoom(14)">中字 </a> <a
									href="javascript:doZoom(12)">小字 </a>] </font>
								</td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
			<tr>
				<td>要不停尝试.... 要不停尝试....要不停尝试.... <br>
				</td>
			</tr>
		</table>
	</div>
	<br>
	<br>
</BODY>
</html>
