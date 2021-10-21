$htmlContent = '<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Age Technology - Aplicativos por grupos</title>
        <meta charset="utf8">
        <meta name="charset" value="utf8">
        <style>
        * {
            font-family : "segoe Ui";
        }
        
        .conteudo {
            margin: 0 auto;
            max-width: 100%;
            width: 1024px;
            
        }
        header {
            display: flex;
            border: solid 1px grey;
            justify-content: stretch;
            text-align: center;
            flex-direction: row;
            font-weight: 600;
            /*! flex-grow: 1; */
        }
        
        header > div {
            border: solid 1px grey;
            flex-grow: 1;
        }

        .selectedTab {
            border-top: solid 4px #47a5ae;
        }

        #versionamento div {
            height: 50%;
            padding: 6pt;
            box-sizing: border-box;
        }
        
        #versionamento div:last-child {
            border-top: solid 2px grey;
        }
        
        #logo {
            padding: 6pt;
            align-items: center;
        }
        
        #detalhes div {
            padding: 6pt;
        }
        
        #detalhes div:last-child {
            border-top: solid 2px grey;
        }
        
        #tabRow input[type="radio"] {
            display: none;
        }
        #tabRow{
            margin: 12pt 12pt 0 12pt;    
        }
        
        #tabRow label {
            background-color: #efefef;
            padding: 6pt 12pt;
            border-radius: 4px 4px 0px 0px;
            cursor: pointer;
        }
        
        #tabRow label > .selectedTab {
            border-top: solid 2px #47a5ae;
        }
        
        #detalhes {
            flex-grow: 1;
        }
        
        .grupos {
            padding: 6pt;
            margin: 6pt;    
            border-radius: 4px;
            background-color: #efefef;
        }
        
        .nomeGrupo {
            background-color: #47a5ae;
            display: flex;
            justify-content: space-between;
            padding: 6pt;
            border-radius: 4px;
            color: white;
            font-weight: 700;
            cursor: pointer;
            margin: 6pt;
        }
        
        .nomeGrupo button {
            background-color: #fbba00;
            border: none;
            border-radius: 4px;
            color: white;
            font-weight: 700;
        }
        
        .gerenciaVisivel {
            display: block;
        }
        
        section {
            display: none;
        }
        
        .aplicacoesInvisivel {
            display: none;
        }
        
        .aplicacoesVisivel {
            display: flex ;                
        }
        
        .aplicacoesVisivel div {
            padding: 6pt;
            background-color: white;
            flex-grow: 1;   
            margin: 6pt;                                
            border-radius: 4px; 
        }

        .rotulo {
            background-color: #fbba00 !important;;
            font-weight: 600;
            color:white;
            border-radius: 4px;                
        }
        
        footer {
            margin-top: 12pt;
        }
        .linhaRodape {
            font-family: courier; 
            border-bottom: solid 1px grey;
            display: flex;
            justify-content: space-between;
        }
        
        .linhaRodape:last-child{
            border-bottom: none;
        }

</style>
    </head>
    <body>
        <article class="conteudo">
            <header>
                <div id="logo"><img src="data:image/jpeg;base64,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" alt="AgeLogo"></div>
                <div id="detalhes">
                    <div id="Departamento">DEPARTAMENTO DE DESENVOLVIMENTO<br/>TECNOLOGIA DA INFORMAÇÃO</div>
                    <div id="Titulo">Gestão de permissão de acessos aos aplicativos empresariais</div>
                </div>
                <div id="versionamento">
                    <div id="Codigo">M-DEV-XXX</div>
                    <div id="Revisao">Revisão: 01.01</div>
                </div>
            </header>
            <div id="tabRow">
                <label for="adm" class="selectedTab" onclick="toggleTab(this)">ADM</label>
                <label for="dev" onclick="toggleTab(this)">DEV</label>
                <label for="rn" onclick="toggleTab(this)">R&N</label>                
            </div>
            {0}
            <footer>
                <div class="linhaRodape">
                    <div>Elaboração: Tecnologia da Informação</div>
                    <div>Aprovação: {2}</div>
                </div>
                <div class="linhaRodape">
                    <div>Classificação: Sensível</div>
                    <div>Data: {1}</div>
                </div>
            </footer>
        </article>
        <script>
            var collapseItens = function(sender) {
                
                parentDiv = sender.parentNode;
                listItens = parentDiv.childNodes[3];                
                console.log(listItens);
                if (listItens.classList.contains("aplicacoesInvisivel")) {
                    listItens.classList.remove("aplicacoesInvisivel");
                    listItens.classList.add("aplicacoesVisivel");
                    console.log("painel exibido");
                } else {
                    listItens.classList.remove("aplicacoesVisivel");
                    listItens.classList.add("aplicacoesInvisivel");
                    console.log("painel ocultado");
                }
            }

            var toggleTab = function(sender) {
                if (!(sender.classList.contains("selectedTab"))) {

                    tabRow = sender.parentNode;                      
                    for (var i = 0; i < tabRow.children.length ; i++) {
                        tabRow.children[i].classList.remove("selectedTab");
                    }
                    sender.classList.add("selectedTab");
                    console.log(sender);

                    grupoGerencias = document.getElementsByTagName("section");
                    for (var i = 0; i < grupoGerencias.length; i++) {
                        grupoGerencias[i].classList.remove("gerenciaVisivel");
                    }

                    switch(sender.htmlFor) {
                        case "adm" :
                            grupoGerencias[0].classList.add("gerenciaVisivel");
                            break;
                        case "dev" :
                            grupoGerencias[1].classList.add("gerenciaVisivel");
                            break;
                        case "rn" :
                            grupoGerencias[2].classList.add("gerenciaVisivel");
                            break;
                        default:
                            console.log(grupoGerencias);
                    }                    
                }
            }
        </script>
    </body>
</html>'

$grpSegMain ="a028564a-5f19-4320-a3a2-c2408b61b7c4"

<#
$grpSegRN = "010f140f-cc83-45c7-926d-814f30209da4"
$grpSegDev = "abd36f38-eb93-4c8c-a63f-38abfdd75b41"
$grpSegAdm = "a5386816-1354-40f6-a5aa-3e2b03f53090"
$Grupos = Get-AzureADGroupMember -ObjectID "9eb01869-4b6b-49a0-871c-ed64a0bafd30" | Sort-Object -Property DisplayName
$Gestoes = Get-AzureADGroupMember -ObjectId $grpSegMain | Sort-Object -Property DisplayName
#>

$Gerencias = Get-AzureADGroupMember -ObjectId $grpSegMain | Sort-Object -Property DisplayName
$conteudo = ""
foreach ($gerencia in $Gerencias) {
    $Grupos = Get-AzureADGroupMember -ObjectId $gerencia.ObjectID
    
    if ($gerencia.MailNickName -eq "grpSegAdm") {
        $conteudo += '              <section class="gerenciaVisivel" id="' + $gerencia.MailNickName + '">'
    } else {
        $conteudo += '              <section id="' + $gerencia.MailNickName + '">'
    }
    
    foreach($grupo in $Grupos) {
        $conteudo += '                  <div class="grupos">'        
        $conteudo += '                      <div class="nomeGrupo" onclick="collapseItens(this)">'
        $conteudo += '                          <div>' + $grupo.DisplayName + '</div>'
        $conteudo += '                      </div>'
        $conteudo += '                      <div class="aplicacoesInvisivel">'
        $conteudo += '                          <div class="membros">'
        $conteudo += '                              <div class="rotulo">Membros</div>'
        $Membros  = Get-AzureADGroupMember -ObjectId $grupo.ObjectID        
        foreach ($membro in $Membros) {
            $conteudo += '                              <div>' + $membro.DisplayName + '</div>'            
        }
        $conteudo += '                          </div>'
        $conteudo += '                          <div class="aplicacoes">'
        $appRoles = Get-AzureADGroupAppRoleAssignment -ObjectId $grupo.ObjectId
        $conteudo += '                              <div class="rotulo">Aplicacoes</div>'
        foreach ($appRole in $appRoles) {
            $conteudo += '                              <div>' + $appRole.ResourceDisplayName + '</div>'
        }
        $conteudo += '                          </div>'
        $conteudo += '                      </div>'
        $conteudo += '                  </div>' 
    }
    $conteudo += '              </section>'
}

$tiLider = (Get-AzureADGroupMember -ObjectId "2bc13aa0-2d87-4125-b066-5ecfb78ccfa2")[0].DisplayName
$dataAtual = Get-Date -Format "dd/MM/yyyy"
$htmlContent = $htmlContent.Replace('{0}',  $conteudo)
$htmlContent = $htmlContent.Replace('{1}', $dataAtual)
$htmlContent = $htmlContent.Replace('{2}', $tiLider)
Remove-Item .\Roles.html
$htmlContent | Out-File .\Roles.html