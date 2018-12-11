
<% String message = (String) session.getAttribute("message");
    String choixAction = (String) session.getAttribute("choixAction");
    String idProduit = (String) session.getAttribute("idProduit");
%>

<%@include file="jspHeader.jsp" %>
<link href="locliv.css" rel="stylesheet" type="text/css"/>

<br>
<br>
<br>
<br>
<br>
<div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-8">
        <form action="ServletControleur?idEcran=1" method="post">
            <fieldset>
                <legend>Gestion des produits</legend>
                <div class="divSaisieAccueil">
                    <div class="divTexte">
                        <label for="idProduit">Num�ro de produit :</label>
                        <input type="text"
                               name="idProduit"
                               value="<%=idProduit%>"
                               size="8"
                               maxlength="8"
                               id="idProduit"/>
                        <br>
                        <br>
                    </div>
                    <div class="divRadio">
                        <%  if (choixAction.compareTo("modification") == 0) {
                        %>

                        <input type="radio" 
                               name="choixAction" 
                               value="modification" 
                               id="radio1" 
                               checked="checked" />
                        <%  } else {
                        %>
                        <input type="radio" 
                               name="choixAction" 
                               value="modification" 
                               id="radio1" />
                        <%
                            }
                        %>
                        <label for="radio1">Modification</label>

                        <%  if (choixAction.compareTo("cr�ation") == 0) {
                        %>        
                        <input type="radio" 
                               name="choixAction" 
                               value="cr�ation" 
                               id="radio2" 
                               checked="checked" />
                        <%  } else {
                        %>
                        <input type="radio" 
                               name="choixAction" 
                               value="cr�ation" 
                               id="radio2" />
                        <%
                            }
                        %>
                        <label for="radio2">Cr�ation</label>

                        <%  if (choixAction.compareTo("suppression") == 0) {
                        %>        
                        <input type="radio" 
                               name="choixAction" 
                               value="suppression" 
                               id="radio3" 
                               checked="checked" />
                        <%  } else {
                        %>
                        <input type="radio" 
                               name="choixAction" 
                               value="suppression" 
                               id="radio3" />
                        <%
                            }
                        %>
                        <label for="radio3">Suppression</label>

                        <br />
                        <br />

                        <%  if (choixAction.compareTo("listeProd") == 0) {
                        %>        
                        <input type="radio" 
                               name="choixAction" 
                               value="listeProd" 
                               id="radio4" 
                               checked="checked" />
                        <%  } else {
                        %>
                        <input type="radio" 
                               name="choixAction" 
                               value="listeProd" 
                               id="radio4" />
                        <%
                            }
                        %>
                        <label for="radio4">Liste des produits</label>
                    </div>
                </div>
            </fieldset>
            <div>
                <!--<input type="submit"
                       class="envoyer"
                       value="liste"
                       name="choixAction" href="ServletControleur?idEcran=1&choixAction=liste"/>-->
                <br>
                <br>
                <input type="submit"
                       class="envoyer"
                       value="Envoyer" />
            </div>
        </form>
    </div>
</div> 
<div>
    <br />
    <br />
    <br />
    <p id=message><%=message%></p>
</div>

<br>
<br>
<br>
<br>
<br>

<%@include file="jspFooter.jsp" %>   