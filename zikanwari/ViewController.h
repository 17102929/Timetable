//
//  ViewController.h
//  zikanwari
//
//  Created by Sora Mizuno on 4/6/14.
//  Copyright (c) 2014 Sora Mizuno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>{
    IBOutlet UIButton *getsu1,*getsu2,*getsu3,*getsu4,*getsu5,*getsu6,*getsu7,*ka1,*ka2,*ka3,*ka4,*ka5,*ka6,*ka7,*sui1,*sui2,*sui3,*sui4,*sui5,*sui6,*sui7,*moku1,*moku2,*moku3,*moku4,*moku5,*moku6,*moku7,*kin1,*kin2,*kin3,*kin4,*kin5,*kin6,*kin7, *do1,*do2,*do3,*do4,*do5,*do6,*do7,*zikan;
    
    IBOutlet UILabel *lgetsu1,*lgetsu2,*lgetsu3,*lgetsu4,*lgetsu5,*lgetsu6,*lgetsu7,*lka1,*lka2,*lka3,*lka4,*lka5,*lka6,*lka7,*lsui1,*lsui2,*lsui3,*lsui4,*lsui5,*lsui6,*lsui7,*lmoku1,*lmoku2,*lmoku3,*lmoku4,*lmoku5,*lmoku6,*lmoku7,*lkin1,*lkin2,*lkin3,*lkin4,*lkin5,*lkin6,*lkin7, *ldo1, *ldo2, *ldo3, *ldo4, *ldo5, *ldo6, *ldo7;
    
    IBOutlet UITextField *kyouka;
     IBOutlet UITextField *kyousitsumei;
     IBOutlet UITextField *sensei;
    
    
    IBOutlet UIScrollView *scr;
    
        
  
}

//時間割を押したときのアクション
-(IBAction)pushgetsu1;
-(IBAction)pushgetsu2;
-(IBAction)pushgetsu3;
-(IBAction)pushgetsu4;
-(IBAction)pushgetsu5;
-(IBAction)pushgetsu6;
-(IBAction)pushgetsu7;
-(IBAction)pushka1;
-(IBAction)pushka2;
-(IBAction)pushka3;
-(IBAction)pushka4;
-(IBAction)pushka5;
-(IBAction)pushka6;
-(IBAction)pushka7;
-(IBAction)pushsui1;
-(IBAction)pushsui2;
-(IBAction)pushsui3;
-(IBAction)pushsui4;
-(IBAction)pushsui5;
-(IBAction)pushsui6;
-(IBAction)pushsui7;
-(IBAction)pushmoku1;
-(IBAction)pushmoku2;
-(IBAction)pushmoku3;
-(IBAction)pushmoku4;
-(IBAction)pushmoku5;
-(IBAction)pushmoku6;
-(IBAction)pushmoku7;
-(IBAction)pushkin1;
-(IBAction)pushkin2;
-(IBAction)pushkin3;
-(IBAction)pushkin4;
-(IBAction)pushkin5;
-(IBAction)pushkin6;
-(IBAction)pushkin7;
-(IBAction)pushdo1;
-(IBAction)pushdo2;
-(IBAction)pushdo3;
-(IBAction)pushdo4;
-(IBAction)pushdo5;
-(IBAction)pushdo6;
-(IBAction)pushdo7;

//時間を決める時、キャンセル、完了のアクション
-(IBAction)pushitizikanme;





//テキストフィールド関連
-(IBAction)kyoukaend;
-(IBAction)kyousitsuend;
-(IBAction)senseiend;






@end





/*やってて気付いたことメモ
 
・関連付けしたくない変数でViewdidLoadに書けないやつは、
 @interface ViewController (){
 
 UIDatePicker *itizikanme;
 
 }
 
 このように、mの上の部分に、hファイルへの記述と「全く同じように」記入、余計な物は付け加えない。
 
・スクロールビューを置いている時、、[self.view addSubview:]ではなく[scr addSubview:]となる。
 
 ・クラスエクステンションを使った時は必ずViewDidLoadで、itizikanme = [[UIDatePicker alloc]init];これをする
 ・関連付けできない、コードで作ったボタンが押された判定
 [batsu addTarget:self
 action:@selector(kesupicker) forControlEvents:UIControlEventTouchUpInside];
 
-(void)kesupicker{
 
 }
 
この場合の最初のbatsuは、何のボタンを押したかで、@selectorの()の中には、どのvoidメソッドを呼び出すかを指定
まあ、コードで関連付けみたいな？w
 
*/
