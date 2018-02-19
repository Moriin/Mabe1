<%@ Page Title="" Language="VB" MasterPageFile="~/Masters/Portal.master" AutoEventWireup="false" CodeFile="Captura5S.aspx.vb" Inherits="Pages_Captura5S" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p><span class="style1"><strong>Semana Fiscal:</strong> </span>
    <asp:DropDownList ID="SF" runat="server" AutoPostBack="True" 
    style="left: -6px; position: static; top: 8px" CssClass="Textos">
    </asp:DropDownList>&nbsp;&nbsp;&nbsp;
    <span class="style1"><strong>Turno:</strong> </span>
    <asp:DropDownList ID="Turno" runat="server" AutoPostBack="True" 
    style="left: -6px; position: static; top: 8px" CssClass="Textos">
        <asp:ListItem Selected="True" Value="1">Turno 1</asp:ListItem>
        <asp:ListItem Value="2">Turno 2</asp:ListItem>
    </asp:DropDownList></p>

    <asp:DataGrid ID="lineas" runat="server" Width="900px" 
        AutoGenerateColumns="False" GridLines="None" CellPadding="4" 
        ForeColor="#333333" HorizontalAlign="Center">
            <HeaderStyle CssClass="renglon" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditItemStyle BackColor="#999999" />
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateColumn HeaderText="L&#237;nea" ItemStyle-Width="150">
                    <ItemStyle Font-Size="9pt" Font-Bold="False" Font-Italic="False" 
                        Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                        HorizontalAlign="Left" />
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.n_linea_ensamble") %>' CssClass="time"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>                
                <asp:TemplateColumn HeaderText="Valor" ItemStyle-Width="100">
                    <ItemTemplate>
                        <asp:TextBox ID="valor" runat="server" MaxLength="2" CssClass="textos time" Text='<%# DataBinder.Eval(Container, "DataItem.valor")%>' Width="60px"></asp:TextBox>%
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Comentario" ItemStyle-Width="250">
                    <ItemTemplate>
                        <asp:TextBox ID="comentario" runat="server" MaxLength="250" CssClass="textos" Text='<%# DataBinder.Eval(Container, "DataItem.comentario")%>'
                            Width="300px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:BoundColumn DataField="c_linea_ensamble" Visible="False"></asp:BoundColumn>                
            </Columns>
            <HeaderStyle CssClass="Tabla-Header" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center"/>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>       
        <br />
    <p><asp:Label ID="Estado" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></p>
    <p>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
    </p>

</asp:Content>

