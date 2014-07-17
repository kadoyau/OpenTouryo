﻿<%@ Page Language="_CodebehindLanguage_" MasterPageFile="~/Aspx/Common/testBlankScreen.master"
    AutoEventWireup="true" CodeFile="_TableName_ConditionalSearch.aspx._ClassTemplateFileExtension_"
    Inherits="_TableName_ConditionalSearch" Title="_TableName_ConditionalSearch" %>

<%@ Register Assembly="CustomControl" Namespace="Touryo.Infrastructure.CustomControl"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_A" runat="Server">
    データアクセス制御クラス（データプロバイダ）を選択<br />
    <cc1:WebCustomDropDownList ID="ddlDap" runat="server">
        <asp:ListItem Value="SQL">SQL Server / SQL Client</asp:ListItem>
        <asp:ListItem Value="ODP">Oracle / ODP.NET</asp:ListItem>
	<asp:ListItem Value="NPS">PostGres /NPGSQL</asp:ListItem>
    </cc1:WebCustomDropDownList>
    <br />
    <table width="100%">
        <tr>
            <td>
                AND = 条件<br />
                <table>
                    <!-- ControlComment:LoopStart-PKColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__And" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-PKColumn -->
                    <!-- ControlComment:LoopStart-ElseColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__And" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-ElseColumn -->
                </table>
                <br />
                AND Like 条件<br />
                <table>
                    <!-- ControlComment:LoopStart-PKColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__And_Like" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-PKColumn -->
                    <!-- ControlComment:LoopStart-ElseColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__And_Like" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-ElseColumn -->
                </table>
            </td>
            <td>
                OR = 条件<br />
                <table>
                    <!-- ControlComment:LoopStart-PKColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__OR" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-PKColumn -->
                    <!-- ControlComment:LoopStart-ElseColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__OR" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-ElseColumn -->
                </table>
                <br />
                OR Like 条件<br />
                <table>
                    <!-- ControlComment:LoopStart-PKColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__OR_Like" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-PKColumn -->
                    <!-- ControlComment:LoopStart-ElseColumn -->
                    <tr>
                        <td>
                            _ColumnName_
                        </td>
                        <td>
                            <cc1:WebCustomTextBox ID="txt_ColumnName__OR_Like" runat="server">
                            </cc1:WebCustomTextBox>
                        </td>
                    </tr>
                    <!-- ControlComment:LoopEnd-ElseColumn -->
                </table>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnSearch" runat="server" Text="上記の条件で検索" />
    <asp:Button ID="btnInsert" runat="server" Text="レコードを追加する。" />
    <asp:GridView ID="gvwGridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="_PKColumnList_"
        AllowPaging="True" AllowSorting="True" PageSize="30" Width="100%" BorderWidth="1px">
        <HeaderStyle BackColor="darkturquoise" />
        <EditRowStyle BackColor="LightYellow" />
        <Columns>
            <asp:CommandField ShowSelectButton="true" ButtonType="Button" SelectText="選択" />
            <!-- ControlComment:LoopStart-PKColumn -->
            <asp:TemplateField SortExpression="_ColumnName_">
                <ItemTemplate>
                    <asp:TextBox ReadOnly="true" BackColor="lightgray" ID="txt_ColumnName_" runat="server"
                        Text='<%# Bind("_ColumnName_") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <!-- ControlComment:LoopEnd-PKColumn -->
            <!-- ControlComment:LoopStart-ElseColumn -->
            <asp:TemplateField SortExpression="_ColumnName_">
                <ItemTemplate>
                    <asp:TextBox ReadOnly="true" ID="txt_ColumnName_" runat="server" Text='<%# Bind("_ColumnName_") %>'></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <!-- ControlComment:LoopEnd-ElseColumn -->
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" EnablePaging="True" TypeName="_TableName_TableAdapter"
        SelectCountMethod="SelectCountMethod" SelectMethod="SelectMethod" MaximumRowsParameterName="maximumRows"
        StartRowIndexParameterName="startRowIndex"></asp:ObjectDataSource>
</asp:Content>
