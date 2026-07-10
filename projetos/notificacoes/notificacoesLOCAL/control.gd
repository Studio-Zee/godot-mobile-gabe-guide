extends Control

@onready var label_status = $Label
@onready var notificacao = $NotificationScheduler

func _ready():
	if notificacao:
		notificacao.initialize()

func _on_button_pressed() -> void:
	if not notificacao:
		label_status.text = "Erro: Adicione o nó NotificationScheduler na cena!"
		return

	if not notificacao.has_post_notifications_permission():
		notificacao.request_post_notifications_permission()
		label_status.text = "Permissão pedida. Aceite na tela e clique de novo!"
		return
		
	var canal = NotificationChannel.new()
	canal.set_id("canal_bau")
	canal.set_name("Recompensas do Jogo")
	canal.set_importance(NotificationChannel.Importance.DEFAULT)
	notificacao.create_notification_channel(canal)

	var dados = NotificationData.new()
	dados.set_id(1)
	dados.set_channel_id("canal_bau")
	dados.set_title("Baú de Ouro Aberto!")
	dados.set_content("Volte rápido, seus itens estão te esperando!")
	dados.set_delay(5) 

	notificacao.schedule(dados)
	
	label_status.text = "Baú agendado!"
