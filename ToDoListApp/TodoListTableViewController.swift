//
//  TodoListTableViewController.swift
//  ToDoListApp
//
//  Created by yoway Li on 2024/10/1.
//

import UIKit

class TodoListTableViewController: UITableViewController {
    let todoList: [TodoItem] = [
        TodoItem(タイトル: "ミーティング資料の準備", 詳細: "会議で使う資料を準備する", 期限: nil, 完了: false),
        TodoItem(タイトル: "週末の買い物リスト作成", 詳細: "食材や日用品のリストを作る", 期限: nil, 完了: false),
        TodoItem(タイトル: "ジムに行く", 詳細: "体を鍛えるためにジムへ行く", 期限: nil, 完了: false),
        TodoItem(タイトル: "プロジェクト報告書の作成", 詳細: "プロジェクトの進捗をまとめる", 期限: nil, 完了: false),
        TodoItem(タイトル: "子供の学校用意", 詳細: "子供の学校の準備を手伝う", 期限: nil, 完了: false),
        TodoItem(タイトル: "家計簿の更新", 詳細: "最近の支出を記録する", 期限: nil, 完了: false),
        TodoItem(タイトル: "洗濯物を干す", 詳細: "洗濯物を外に干す", 期限: nil, 完了: false),
        TodoItem(タイトル: "読書時間を確保", 詳細: "1日30分の読書をする", 期限: nil, 完了: false),
        TodoItem(タイトル: "映画のチケット予約", 詳細: "週末の映画のチケットを予約する", 期限: nil, 完了: false),
        TodoItem(タイトル: "家族との電話", 詳細: "両親に電話をかける", 期限: nil, 完了: false),
        TodoItem(タイトル: "銀行で振り込み手続き", 詳細: "銀行で支払いを完了させる", 期限: nil, 完了: false),
        TodoItem(タイトル: "パスポート更新手続き", 詳細: "パスポートの更新申請を行う", 期限: nil, 完了: false),
        TodoItem(タイトル: "プレゼンテーションのリハーサル", 詳細: "プレゼンテーションを練習する", 期限: nil, 完了: false),
        TodoItem(タイトル: "新しいレシピを試す", 詳細: "新しい料理に挑戦する", 期限: nil, 完了: false),
        TodoItem(タイトル: "車のオイル交換", 詳細: "定期メンテナンスとしてオイルを交換する", 期限: nil, 完了: false),
        TodoItem(タイトル: "オンラインコースのレッスン受講", 詳細: "オンラインの授業を受ける", 期限: nil, 完了: false),
        TodoItem(タイトル: "部屋の模様替え", 詳細: "部屋のインテリアを変える", 期限: nil, 完了: false),
        TodoItem(タイトル: "観葉植物の水やり", 詳細: "植物に水をあげる", 期限: nil, 完了: false),
        TodoItem(タイトル: "書類の整理整頓", 詳細: "溜まった書類を整理する", 期限: nil, 完了: false),
        TodoItem(タイトル: "同僚の誕生日プレゼントを買う", 詳細: "プレゼントを準備する", 期限: nil, 完了: false),
        TodoItem(タイトル: "健康診断の予約", 詳細: "健康診断を予約する", 期限: nil, 完了: false),
        TodoItem(タイトル: "スマホの写真整理", 詳細: "スマホ内の写真をバックアップする", 期限: nil, 完了: false),
        TodoItem(タイトル: "大掃除の計画", 詳細: "部屋の大掃除の計画を立てる", 期限: nil, 完了: false),
        TodoItem(タイトル: "旅行の計画を立てる", 詳細: "次の旅行の準備をする", 期限: nil, 完了: false),
        TodoItem(タイトル: "歯医者の予約", 詳細: "定期的な歯のメンテナンスを予約", 期限: nil, 完了: false),
        TodoItem(タイトル: "新しい趣味を見つける", 詳細: "新しいことに挑戦する", 期限: nil, 完了: false),
        TodoItem(タイトル: "ウェブサイトの更新作業", 詳細: "ウェブページの内容を更新", 期限: nil, 完了: false),
        TodoItem(タイトル: "SNSの投稿内容を考える", 詳細: "投稿する内容を準備する", 期限: nil, 完了: false),
        TodoItem(タイトル: "月次レポートの作成", 詳細: "月の業務内容をまとめる", 期限: nil, 完了: false),
        TodoItem(タイトル: "部下との1対1ミーティング", 詳細: "部下との業務進捗を確認する", 期限: nil, 完了: false),
        TodoItem(タイトル: "朝食用のパンを焼く", 詳細: "新しいレシピでパンを焼く", 期限: nil, 完了: false),
        TodoItem(タイトル: "猫のトイレ掃除", 詳細: "ペットのトイレを掃除する", 期限: nil, 完了: false),
        TodoItem(タイトル: "スポーツイベントのチケット購入", 詳細: "お気に入りのスポーツチームの試合に行く", 期限: nil, 完了: false),
        TodoItem(タイトル: "近所のカフェでリラックス", 詳細: "おいしいコーヒーを飲む", 期限: nil, 完了: false),
        TodoItem(タイトル: "水道料金の支払い", 詳細: "忘れずに水道料金を払う", 期限: nil, 完了: false),
        TodoItem(タイトル: "親友との夕食会を計画", 詳細: "レストランの予約を取る", 期限: nil, 完了: false),
        TodoItem(タイトル: "フィットネスアプリの目標設定", 詳細: "フィットネス目標を再設定する", 期限: nil, 完了: false),
        TodoItem(タイトル: "子供の遊び場探し", 詳細: "週末の遊び場を見つける", 期限: nil, 完了: false),
        TodoItem(タイトル: "英語の勉強をする", 詳細: "1日1レッスン進める", 期限: nil, 完了: false),
        TodoItem(タイトル: "クレジットカードの請求書確認", 詳細: "クレジットカードの明細をチェックする", 期限: nil, 完了: false),
        TodoItem(タイトル: "電子書籍を読む", 詳細: "最近購入した本を読む", 期限: nil, 完了: false),
        TodoItem(タイトル: "朝の散歩に行く", 詳細: "新鮮な空気を吸うため散歩する", 期限: nil, 完了: false),
        TodoItem(タイトル: "ガーデニングの道具を整理", 詳細: "庭作りの準備をする", 期限: nil, 完了: false),
        TodoItem(タイトル: "お弁当の準備", 詳細: "明日のためにお弁当を作る", 期限: nil, 完了: false),
        TodoItem(タイトル: "自転車のメンテナンス", 詳細: "タイヤの空気を入れる", 期限: nil, 完了: false),
        TodoItem(タイトル: "新しいスニーカーを買う", 詳細: "履き心地の良い靴を買う", 期限: nil, 完了: false),
        TodoItem(タイトル: "地元のイベントに参加", 詳細: "週末のイベントに顔を出す", 期限: nil, 完了: false),
        TodoItem(タイトル: "写真をアルバムに整理", 詳細: "最近撮った写真を整理する", 期限: nil, 完了: false),
        TodoItem(タイトル: "天気予報を確認して洗濯する", 詳細: "晴れの日を狙って洗濯する", 期限: nil, 完了: false),
        TodoItem(タイトル: "パズルを完成させる", 詳細: "家族で一緒に楽しむ", 期限: nil, 完了: false)
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
