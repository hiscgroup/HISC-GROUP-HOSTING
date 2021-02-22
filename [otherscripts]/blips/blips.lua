local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
  
  

  {title="Garage", colour=38, id=50, x= 217.91 , y = -993.4 , z = 29.12}, ---garageplateia

  {title="Aerodromio", colour=38, id=16, x = -981.57,y = -2999.06,z = 13.95}, ---aerodromio 

  {title="Aerodromio", colour=38, id=16, x = 1690.02,y = 3252.61,z = 40.88}, ---aerodromio 

  {title="Garage", colour=38, id=50, x =-1216.35, y=-664.71, z=25.48}, ---garage  

  {title="Garage", colour=38, id=50, x = 1209.28,y = 335.14,z = 81.99}, ---garage  

  {title="Garage", colour=38, id=50, x = -1725.25, y = -720.68,z = 10.67}, ---garage  

  {title="Garage", colour=38, id=50, x=105.359, y=6613.586, z=31.3973}, ---garagepaleto

  {title="Garage", colour=38, id=50, x = 1501.2,y = 3762.19,z = 33.0}, ---garagesandy 

  {title="Coffee", colour=71, id=89, x = 379.02,y = -1071.12,z = 29.45}, ---Coffee

  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.8)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)