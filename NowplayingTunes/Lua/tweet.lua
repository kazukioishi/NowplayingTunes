-- Luaの初期化の時に一度だけ呼び出されます
-- Luaのスクリプトの編集の反映にはアプリケーションの再起動が必要になります
function main()
    console("Lua scripting module initialized!!");
end

function OnTweet(Song, opt, isCustomTweet)
    -- Song:中には曲情報が入っています。iTunesClass.csを参考に弄ってください
    -- opt:ツイートです。中身を変える時はopt.Statusの中身を変更でお願いします
    -- 何もしない時はとりあえずtrueを返すようになっています(falseにすると投稿自体を取り消します)
    
    -- カスタムツイートの時は何もしない
    if isCustomTweet == true then
        return true;
    end
    -- opt.Status = "Luaから直接変更してみるテスト";
    -- サンプル1(めうめうぺったんたん)
    --[[
    if Song.SongTitle == "めうめうぺったんたん！！" then
        opt.Status = "めめめめめめめ めうめうーっ！めめめめうめうーっ！ぺーったんぺったんぺったんぺったん大好きーっ";
    end
    --]]
    return true;
end