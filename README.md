# Godot Mobile + GABE

Repositório oficial da série **Godot Mobile + GABE** do canal Zee GameDev.

O objetivo deste projeto é reunir documentação, projetos de exemplo e tutoriais sobre o uso do [GABE](https://godotengine.org/article/gabe-stable-release/) (Godot Android Build Environment) para desbloquear recursos avançados do Android diretamente na Godot Mobile.

Com o GABE, agora é possível utilizar funcionalidades que antes exigiam um computador, como notificações nativas, plugins Android, AdMob, compras integradas e exportação de arquivos AAB para publicação na Play Store.

---

## Série no YouTube

Acompanhe os vídeos da série no canal Zee GameDev:

- Episódio 1 - [Configurando o GABE](https://youtu.be/TGiyKU4TJkE)
- Episódio 2 - [Notificações (Locais e Push)](https://youtu.be/joDtN-6b7Ks)
- Episódio 3 - Exportação AAB
- Episódio 4 - AdMob e anúncios
- Episódio 5 - Toast Android
- Episódio 6 - Firebase *(futuro)*
- Episódio 7 - Compras Integradas *(futuro)* 
---

## Documentação

### Introdução

- [Configurando o GABE](documentacao/01-instalacao-gabe.md)

### Recursos Android

- [Toast Android](documentacao/06-toast-android.md)
- [Notificações Locais](documentacao/02-notificacoes.md)

### Publicação

- [Gerando APK com Gradle](documentacao/03-gradle-build.md)
- [Gerando AAB para Play Store](documentacao/04-exportando-aab.md)

### Monetização

- [AdMob](documentacao/05-admob.md)
- [Compras Integradas](documentacao/07-iap.md)

### Serviços Online

- [Firebase](documentacao/08-firebase.md)

---

## Projetos de Exemplo

Todos os projetos utilizados nos vídeos estarão disponíveis aqui:

| Projeto | Descrição |
|----------|------------|
| Toast | Exemplo de mensagens nativas Android |
| Notificações | Exemplo de notificações locais e push   |
| AAB | Projeto usado para testes de exportação |
| AdMob | Integração de anúncios |
| Firebase | Integração com serviços Firebase |

---

## Estrutura do Repositório

```text
docs/
├── 01-instalacao-gabe.md
├── 02-toast-android.md
├── 03-notificacoes.md
├── 04-gradle-build.md
├── 05-exportando-aab.md
├── 06-admob.md
├── 07-iap.md
└── 08-firebase.md

projects/
├── toast/
├── notificacoes/
├── aab/
├── admob/
└── firebase/

assets/
└── imagens/
```

---

## Requisitos

- Godot Engine para Android
- GABE instalado
- Espaço livre para compilações Gradle
- Conexão com internet para baixar dependências

---

## Contribuindo

Encontrou algum erro na documentação ou quer sugerir melhorias?

Abra uma [Issue](https://github.com/Studio-Zee/godot-mobile-gabe-guide/issues) ou envie um [Pull Request](https://github.com/Studio-Zee/godot-mobile-gabe-guide/pulls).

---

## Links Úteis

- Godot Mobile: [download](https://play.google.com/store/apps/details?id=org.godotengine.editor.v4)
- GABE na Play Store: [download](https://play.google.com/store/apps/details?id=org.godotengine.godot_gradle_build_environment)
- Canal Zee GameDev: [inscreva-se](https://youtube.com/@ZeeGameDev)

---

## Apoie o Projeto

Se este repositório te ajudou, considere deixar uma estrela no GitHub.

Isso ajuda mais desenvolvedores a encontrarem o conteúdo e incentiva a continuação da série.
