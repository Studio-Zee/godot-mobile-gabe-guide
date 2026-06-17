### Configurando Godot Mobile com GABE

Este guia mostra como configurar o GABE (Godot Android Build Environment) para desbloquear recursos avançados do Android na Godot Mobile, incluindo notificações nativas, plugins Android, AdMob, compras integradas e exportação de arquivos AAB.

## Pré-requisitos

Antes de começar, certifique-se de ter:

- Godot Engine instalada no Android;
- Conexão com a internet;
- Pelo menos 2 GB de armazenamento livre (recomendado).

---

## Passo 1: Instalando o GABE

O GABE é um aplicativo complementar responsável por realizar as compilações Gradle diretamente no Android.

### Instalação

1. Abra a Play Store.
2. Pesquise por **GABE**.
3. Instale e abra o aplicativo.
4. Conceda todas as permissões solicitadas.

Na tela inicial haverá um botão azul responsável por baixar os componentes necessários para compilação.

Clique no botão e aguarde o download terminar.

**Dica:** O processo foi concluído quando o botão deixar de exibir "Install" e passar a exibir "Delete".

Após a conclusão, o aplicativo pode ser fechado normalmente. Ele será iniciado automaticamente quando a Godot precisar realizar uma compilação Gradle.

<table align="center">
  <tr>
    <td><img src="/assets/imagens/playstore.png" width="200" alt="Baixe o GABE"></td>
    <td><img src="/assets/imagens/instalar.png" width="200" alt="Instale o Rootfs"></td>
    <td><img src="/assets/imagens/deletar.png" width="200" alt="Delete o Rootfs"></td>
  </tr>
  <tr align="center">
    <td><b>1. Baixe o GABE</b></td>
    <td><b>2. Instalar o Rootfs</b></td>
    <td><b>3. Deletar o Rootfs</b></td>
  </tr>
</table>

---

## Passo 2: Preparando o Projeto

Agora precisamos preparar o projeto para utilizar o sistema de compilação Gradle.

1. Abra seu projeto na Godot Mobile.
2. Acesse:

Projeto → Instalar Modelo de Compilação Android

<table align="center">
    <img src="/assets/imagens/modelos_compilacao.png" alt="Modelos de Compilacao">
</table>

3. Confirme a instalação.

Esse processo criará a pasta:

<table align="center">
    <img src="/assets/imagens/pasta_android.png" width="200" alt="Pasta Android">
</table>

dentro do projeto.

Esse procedimento deve ser realizado em cada projeto que utilizar recursos Android avançados.

---

## Passo 3: Ativando o Gradle

1. Abra:

Projeto → Exportar

2. Crie uma predefinição Android caso ainda não exista.
3. Ative a opção:

```
Use Gradle Build

```

ou

```
Usar compilação do Gradle

```

dependendo do idioma da interface.

### Importante

Salve o APK dentro da pasta do projeto.

Exemplo:

```
MeuProjeto/build.apk

```

Isso evita problemas de acesso a arquivos durante o processo de compilação.

*Print sugerido: Janela de exportação com Gradle ativado.*

---

## Passo 4: Primeira Vinculação

Na primeira exportação utilizando Gradle:

1. A Godot solicitará acesso ao GABE.
2. Uma janela será exibida solicitando acesso à pasta do projeto.
3. Selecione a pasta correta.
4. Clique em "Usar esta pasta".
5. Confirme em "Permitir".

A partir desse momento o GABE ficará vinculado ao projeto.

*Print sugerido: Tela de autorização de pasta.*

---

## Primeira Compilação

A primeira compilação costuma ser mais lenta.

Isso acontece porque o GABE precisa baixar dependências, bibliotecas e ferramentas necessárias para o Gradle.

Dependendo da velocidade da internet e do aparelho, esse processo pode levar vários minutos.

As próximas compilações normalmente são muito mais rápidas.

---

## Por que o APK fica maior?

Após ativar o Gradle, você perceberá um aumento significativo no tamanho do APK.

Exemplo:

- APK padrão: \~56 MB
- APK com Gradle: \~162 MB

Isso acontece porque o projeto passa a incluir toda a infraestrutura necessária para recursos Android avançados, como:

- Notificações nativas;
- AdMob;
- Google Play Billing;
- Plugins Android;
- Integrações Firebase;
- Outras bibliotecas Gradle.

Esse aumento é esperado.

---

## Solução de Problemas

### A compilação travou

Abra o GABE e utilize as opções de limpeza disponíveis nas configurações.

### O GABE não inicia

Verifique se os componentes foram baixados corretamente na primeira inicialização.

### A exportação falha imediatamente

Confirme se:

- O modelo de compilação Android foi instalado;
- O Gradle está ativado;
- O APK está sendo exportado dentro da pasta do projeto;
- O GABE possui permissão para acessar a pasta do projeto.

---

## Próximos Guias

Esta documentação faz parte da série Godot Mobile + GABE.

Próximos conteúdos:

- Toast Android
- Notificações Locais
- Exportação AAB
- AdMob
- Plugins Android
- Compras Integradas
- Firebase