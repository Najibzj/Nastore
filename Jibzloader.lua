-- Layer 2: Loader dari nastore menjalankloadstring(game:HttpGet("https://raw.githubusercontent.com/PerdHub/Blosfruitscript/main/PerdLoader"))()
-- Key dan Device Validation
local validKey = "123456"  -- Key yang bisa divalidasi lebih lanjut (misal: key per device)
local userId = tostring(game.Players.LocalPlayer.UserId)  -- Mengambil User ID untuk membuat key unik
local hash = game:GetService("Hashing"):MD5(userId)  -- Menggunakan hashing untuk menghasilkan key berbasis user

-- Fungsi untuk memverifikasi key
local function verifyKey(inputKey)
    return inputKey == hash
end

-- Enkripsi Script Asli (Placeholder)
local encryptedScript = "B1tRAn5foRmEdScR1pt==Encrypted" -- Placeholder untuk script terenkripsi

-- Fungsi untuk mendekripsi dan menjalankan
local function decryptAndRunScript(encrypted)
    if verifyKey(validKey) then
        local decryptedScript = game:GetService("HttpService"):JSONDecode(encrypted)  -- Dekripsi dari server atau lokal
        loadstring(decryptedScript)()  -- Menjalankan script yang sudah didekripsi
    else
        print("Invalid key!")
    end
end

-- Mengeksekusi
decryptAndRunScript(encryptedScript)
