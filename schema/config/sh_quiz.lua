-- Quiz System Configuration
-- This file defines the quiz that players must complete before accessing the server

impulse.Config.Quiz = impulse.Config.Quiz or {}

-- Enable or disable the quiz system
impulse.Config.Quiz.Enabled = true

-- Action to take when a player fails the quiz
-- Options: "none" (just log), "kick" (kick the player), "ban" (ban the player)
impulse.Config.Quiz.Action = "kick"

-- Ban length in minutes (only used if Action is "ban")
impulse.Config.Quiz.BanLength = 60

-- Kick reason shown to the player
impulse.Config.Quiz.KickReason = "You failed the server quiz. Please review the rules and try again."

-- Ban reason shown to the player
impulse.Config.Quiz.BanReason = "Failed server quiz. Review the rules at impulse-community.com and appeal your ban."

-- Minimum number of correct answers required to pass
-- Can be a number (e.g., 8) or percentage (e.g., 0.8 for 80%)
impulse.Config.Quiz.RequiredCorrect = 0.8 -- 80% correct required

-- Allow players to retake the quiz if they fail (only applies if Action is "none")
impulse.Config.Quiz.AllowRetake = false

-- Quiz questions
-- Each question must have:
--   id: unique identifier (string or number)
--   text: the question text
--   type: "single" (one correct answer) or "multiple" (multiple correct answers)
--   answers: array of answer options, each with:
--     id: unique identifier within the question
--     text: answer text
--     correct: whether this answer is correct (true/false)
--   shuffle: (optional) shuffle answers client-side (default: true)

impulse.Config.Quiz.Questions = {
    {
        id = 1,
        text = "What is the primary rule of roleplay on this server?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "Always stay in character", correct = true },
            { id = 2, text = "You can break character whenever you want", correct = false },
            { id = 3, text = "Only administrators can roleplay", correct = false },
            { id = 4, text = "Roleplay is optional", correct = false }
        }
    },
    {
        id = 2,
        text = "Which of the following actions are considered RDM (Random Deathmatch)?",
        type = "multiple",
        shuffle = true,
        answers = {
            { id = 1, text = "Killing someone without valid RP reason", correct = true },
            { id = 2, text = "Defending yourself when attacked", correct = false },
            { id = 3, text = "Shooting someone because you're bored", correct = true },
            { id = 4, text = "Following orders from your superior", correct = false }
        }
    },
    {
        id = 3,
        text = "What should you do if you encounter a rule breaker?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "Report them using the proper channels", correct = true },
            { id = 2, text = "Take matters into your own hands and kill them", correct = false },
            { id = 3, text = "Ignore it and continue playing", correct = false },
            { id = 4, text = "Leave the server immediately", correct = false }
        }
    },
    {
        id = 4,
        text = "What is metagaming?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "Using out-of-character information in roleplay", correct = true },
            { id = 2, text = "Playing multiple characters at once", correct = false },
            { id = 3, text = "Being very skilled at the game", correct = false },
            { id = 4, text = "Following the game's meta strategies", correct = false }
        }
    },
    {
        id = 5,
        text = "Which communication methods are considered in-character?",
        type = "multiple",
        shuffle = true,
        answers = {
            { id = 1, text = "Local voice chat", correct = true },
            { id = 2, text = "In-game radio systems", correct = true },
            { id = 3, text = "OOC (Out of Character) chat", correct = false },
            { id = 4, text = "Admin chat", correct = false }
        }
    },
    {
        id = 6,
        text = "What does 'FearRP' mean?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "Valuing your character's life as a real person would", correct = true },
            { id = 2, text = "Being afraid of roleplaying", correct = false },
            { id = 3, text = "Running away from every situation", correct = false },
            { id = 4, text = "Only playing as a fearful character", correct = false }
        }
    },
    {
        id = 7,
        text = "When can you return to the location where you died?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "After the NLR (New Life Rule) timer expires", correct = true },
            { id = 2, text = "Immediately after respawning", correct = false },
            { id = 3, text = "Whenever you want", correct = false },
            { id = 4, text = "Never, under any circumstances", correct = false }
        }
    },
    {
        id = 8,
        text = "What information should you remember after respawning?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "Nothing about how you died or who killed you", correct = true },
            { id = 2, text = "Everything, including who killed you", correct = false },
            { id = 3, text = "Only your killer's identity", correct = false },
            { id = 4, text = "Only your location", correct = false }
        }
    },
    {
        id = 9,
        text = "Which statements about powergaming are correct?",
        type = "multiple",
        shuffle = true,
        answers = {
            { id = 1, text = "Powergaming is not allowed", correct = true },
            { id = 2, text = "You cannot force actions on other players without proper RP", correct = true },
            { id = 3, text = "You can make yourself invincible in roleplay", correct = false },
            { id = 4, text = "You can ignore other players' actions", correct = false }
        }
    },
    {
        id = 10,
        text = "What is the purpose of the /me command?",
        type = "single",
        shuffle = true,
        answers = {
            { id = 1, text = "To describe actions your character is performing", correct = true },
            { id = 2, text = "To talk to other players out of character", correct = false },
            { id = 3, text = "To send private messages", correct = false },
            { id = 4, text = "To give yourself items", correct = false }
        }
    }
}
