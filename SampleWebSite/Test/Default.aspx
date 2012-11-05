<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load()
    {
       System.IO.File.WriteAllText(System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath + "Test\\TestLog.txt",System.DateTime.Now.ToString());
    }

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
    <frameset cols="40%,60%">
        <frame name="AjaxDriver" src="DriverPage.aspx?<%= this.Request.QueryString %>">
        <frame name="testFrame" src="<%= Page.ClientScript.GetWebResourceUrl(typeof(LTAF.Engine.TestDriverPage), "LTAF.Engine.Resources.StartUpPage.htm") %>">
    </frameset>
</html>
