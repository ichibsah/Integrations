<%@ Page Language="C#" AutoEventWireup="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Test Form</title>
</head>
<body>
    <%@ Register TagPrefix="uc" TagName="ScoreChart" Src="~/ScoreChart.ascx" %>
    <uc:ScoreChart ChartTitle ="" DataXmlPath="ChartData.xml" id="ScoreChart" runat="server" />
</body>
</html>
