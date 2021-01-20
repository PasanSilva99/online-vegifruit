<asp:Panel
  ID="LocationItems"
  runat="server"
  CssClass="card shadow m-2 d-flex justify-content-center align-items-center w-100 "
  style="height: 280px"
>
  <asp:Label runat="server" Text="Farmer: jjjj"></asp:Label>
  <asp:Image
    ID="Image1"
    runat="server"
    ImageUrl="/assets/img/2.jpg"
    height="200"
  />
  <asp:Button
    ID="btn_find"
    runat="server"
    Text="Find"
    class="btn btn-primary rounded-pill w-75 m-2"
  />
</asp:Panel>
