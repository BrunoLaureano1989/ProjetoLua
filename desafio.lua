--[[

nome da criatura
desacricao
som que faz
atributo
ataque
defesa
vitalidade
velocidade
inteligencia
...
=============================
/
/ Druid
/ um urso furioso
/ som
/ atributtos:
/ ataque: #######000
/ defesa: ##########

]]
os.execute("chcp 65001")

-- criatura
local monsterName = "Druid"
local description = "Um Urso Furioso"
local emoji = "🐻"


-- atributos
local attackAtribute = 7
local defenseAtribute = 9
local lifeAtribute = 8
local speedAtribute = 4
local inteligenceAtribute = 6
local ultimateAtribute = 10

-- funcao
local function getProgressBar( atributo)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= atributo then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
    
end

-- cartao
print("=============================================")
print("| ".. monsterName, emoji )
print("| ".. description)
print("| Atributos:")
print("| Attack:      " ..getProgressBar(attackAtribute))
print("| Defense:     " .. getProgressBar(defenseAtribute))
print("| Life:        " .. getProgressBar(lifeAtribute))
print("| Speed:       " .. getProgressBar(speedAtribute))
print("| inteligence: " .. getProgressBar(inteligenceAtribute))
print("| Utimate:     " .. getProgressBar(ultimateAtribute))
print("=============================================")
