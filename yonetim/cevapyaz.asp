<form action="cevapkaydet.asp?id=<%=request.QueryString("id")%>" method="post"><table width="571" border="0" cellpadding="0" cellspacing="0">
  <tbody><tr bgcolor="#DF5A0B">
    <td colspan="3"><div class="style1" id="winhosting">
      <div align="center" class="style2"><%=request.QueryString("id")%> Numarali Edestek Mesajina Cevabiniz.</div>
    </div></td>
    </tr>
    <tr>
      <td height="1" colspan="2" class="style1"><center><br><textarea name="icerik" cols="100" rows="10"></textarea></center></td>
      </tr>
    <tr>
      <td width="271" class="style1"><div align="right">
        <input type="reset" name="Reset" value="Temizle" />
      </div></td>
      <td width="300" class="style1"><input type="submit" name="Submit2" value="Mesaji Gönder" /></td>
    </tr>
</tbody></table>
</form>