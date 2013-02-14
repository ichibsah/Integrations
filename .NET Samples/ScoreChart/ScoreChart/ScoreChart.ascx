<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ScoreChart.ascx.cs" Inherits="ScoreChart.ScoreChart" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<table>
    <tr>
        <td>
            <asp:Chart ID="BasicChart" runat="server">
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
        </td>
    </tr>
</table>