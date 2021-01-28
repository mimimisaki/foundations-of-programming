(* 駅名（漢字、ひらがな、ローマ字、路線名）を返す型 *)
type ekimei_t = {
    kanji: string;
    kana: string;
    romaji: string;
    shozoku: string;
}