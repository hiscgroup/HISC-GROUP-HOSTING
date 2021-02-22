Config = {

Text = {

	['someone_is_waiting'] = 'Kapoios xtupaei to kampanaki',
	['press_to_call'] = '[~g~E~w~] gia na xtipisis to kampanki',
	['please_wait'] = 'Kapoios exei idi enhmerwthei parakalw perimenete ~g~'

},

Desks = { --Setup deskbells for each job

  {coords = vector3(441.76,-983.93,30.69 - 0.9), job = 'police'},
  {coords = vector3(115.88848114014,6630.3090820313,33.18488693237 - 0.9), job = 'mechanic'},
  {coords = vector3(-239.18188476563,6219.2143554688,33.0147743225 - 0.9), job = 'cardealer'}                

}
	

}

-- Only change if you know what are you doing!
function SendNotice(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--USING MYTHIC EXAMPLE
		exports['mythic_notify']:SendAlert('inform', msg)

end
