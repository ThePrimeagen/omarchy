-- Spotify is a background music player: opening it should not steal focus
-- from the window in use, so Super + W still closes that window. It opens
-- in the scratchpad, where Super + S brings it forward.
o.window("(^[Ss]potify$|^chrome-open\\.spotify\\.com__.*$)", { focus_on_activate = false, workspace = "special:scratchpad silent" })
