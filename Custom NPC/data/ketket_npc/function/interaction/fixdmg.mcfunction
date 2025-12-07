#summon minecraft:interaction ~ ~0.1 ~ {Tags:["holder"]}
#$ride @e[type=mannequin,sort=nearest,limit=1,tag=ket.npc,scores={npc.id=$(npc_id)}] mount @e[type=interaction,tag=holder,limit=1,sort=nearest]