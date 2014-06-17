//
//  ViewController.m
//  zikanwari
//  Created by Sora Mizuno on 4/6/14.
//  Copyright (c) 2014 Sora Mizuno. All rights reserved.

//絶対に諦めない強い心を持ち、今この時間をアプリ開発に捧げます。絶対にやり切る！どんなに苦しくても。誓います。

//何かあると、何がダメなのかを探すのではなく何が足りないのかを探すためにまずはコードを見るべき

//メソッドを呼ぶタイミングもdate1にする(403行目から!!!!!!)


/*NSDate *date = [NSDate dateWithTimeIntervalSinceNow:5.0f];
UILocalNotification *notify = [[UILocalNotification alloc] init];
notify.fireDate = date;
notify.timeZone = [NSTimeZone defaultTimeZone];
notify.hasAction = YES;
notify.alertBody = @"アラートボタン１番です";
notify.alertAction = @"起動";
[[UIApplication sharedApplication] scheduleLocalNotification:notify];*/




//曜日について、まずはここを必読、分からない用語は逆引きで　http://www.aguuu.com/archives/2011/09/local_notification/

//if(曜日が月曜){
//notify.fireDate = date1;
//notify.fireDate = date2;
//notify.fireDate = date3;
//.......7まで続け
//if(notify.fireDate == date){

//notify.alertBody or action(すなわち表示させる内容)@"NSString 月1(月曜1時間目のtextfieldの内容を表示)

//}

//else if(notify.fireDate == date2){

//notify.alertBody or action(すなわち表示させる内容)@"NSString 月2(月曜2時間目のtextfieldの内容を表示)

//}



//}



//↑サンプルメソッド
//Dateの時に呼び出すべきじゃなくて？↓　取得した日付を順次ローカル通知に登録　のとこ
// http://qiita.com/yusuga_/items/82185f5eb322fcf919fd



//week a, bはint型の適当な変数で分ける（一週間経ったということを取得（詳しくはhttp://cccookie.hatenablog.com/entry/2014/04/25/142441 ) week bならそっちの時間割で↑と全く同じことをやる、)


#import "ViewController.h"

@interface ViewController (){
//itizkanmeの宣言
    UIDatePicker *itizikanme;
    UIDatePicker *nizikanme;
    UIDatePicker *sanzikanme;
    UIDatePicker *yozikanme;
    UIDatePicker *gozikanme;
    UIDatePicker *rokuzikanme;
    UIDatePicker *nanazikanme;
    UIButton *batsu,*maru;
    UILabel *oginai;
    UILabel *oginal2;

    
    UISegmentedControl *segment;
    
    
       
    NSMutableString *datagetsu1;
    NSMutableString *datagetsu2;
    NSMutableString *datagetsu3;
    NSMutableString *datagetsu4;
    NSMutableString *datagetsu5;
    NSMutableString *datagetsu6;
    NSMutableString *datagetsu7;
    
    NSMutableString *dataka1;
    NSMutableString *dataka2;
    NSMutableString *dataka3;
    NSMutableString *dataka4;
    NSMutableString *dataka5;
    NSMutableString *dataka6;
    NSMutableString *dataka7;
    
    NSMutableString *datasui1;
    NSMutableString *datasui2;
    NSMutableString *datasui3;
    NSMutableString *datasui4;
    NSMutableString *datasui5;
    NSMutableString *datasui6;
    NSMutableString *datasui7;
    
    
    NSMutableString *datamoku1;
    NSMutableString *datamoku2;
    NSMutableString *datamoku3;
    NSMutableString *datamoku4;
    NSMutableString *datamoku5;
    NSMutableString *datamoku6;
    NSMutableString *datamoku7;
    
    NSMutableString *datakin1;
    NSMutableString *datakin2;
    NSMutableString *datakin3;
    NSMutableString *datakin4;
    NSMutableString *datakin5;
    NSMutableString *datakin6;
    NSMutableString *datakin7;
    
    NSMutableString *datado1;
    NSMutableString *datado2;
    NSMutableString *datado3;
    NSMutableString *datado4;
    NSMutableString *datado5;
    NSMutableString *datado6;
    NSMutableString *datado7;
    
    //UILocalNotification *notify;
    
    
    NSDate *date1;//1時間目の時間データー
    NSDate *date2;
    NSDate *date3;
    NSDate *date4;
    NSDate *date5;
    NSDate *date6;
    NSDate *date7;
    NSDate *now;
    

    

  
   

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //スクロールビューの設定
        [self registerForKeyboardNotifications];
 
    scr.frame = self.view.bounds;
   
    
    
    //scrと言う名前のUIScrollViewを生成
    
    //スクロールビューの上にkyoukaをおきます。

    kyouka.borderStyle = UITextBorderStyleRoundedRect;
    kyouka.returnKeyType = UIReturnKeyNext;
    kyouka.delegate = self;
        [scr addSubview:kyouka];

    
   
    kyousitsumei.borderStyle = UITextBorderStyleRoundedRect;
   kyousitsumei.returnKeyType = UIReturnKeyNext;
    kyousitsumei.delegate = self;
    [scr addSubview:kyousitsumei];
    
    
   sensei.borderStyle = UITextBorderStyleRoundedRect;
    sensei.returnKeyType = UIReturnKeyDone;
   sensei.delegate = self;
    [scr addSubview:sensei];
    
    //itizikanmeの生成、場所指定
    itizikanme = [[UIDatePicker alloc]init];
    itizikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    itizikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    itizikanme.minuteInterval = 1;
    itizikanme.backgroundColor = [UIColor blueColor];
    itizikanme.hidden = YES;
    
    [scr addSubview:itizikanme];
    
    
    
    //nizikanmeの生成、場所指定
    nizikanme = [[UIDatePicker alloc]init];
    nizikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    nizikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    nizikanme.minuteInterval = 1;
    nizikanme.backgroundColor = [UIColor redColor];
    nizikanme.hidden = YES;
    
    [scr addSubview:nizikanme];
    
    
    
    
    //sanzikanmeの生成、場所指定
    sanzikanme = [[UIDatePicker alloc]init];
    sanzikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    sanzikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    sanzikanme.minuteInterval = 1;
    sanzikanme.backgroundColor = [UIColor yellowColor];
    sanzikanme.hidden = YES;
    [scr addSubview:sanzikanme];
    
    
    
    //yozikanmeの生成、場所指定
    yozikanme = [[UIDatePicker alloc]init];
    yozikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    yozikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    yozikanme.minuteInterval = 1;
    yozikanme.backgroundColor = [UIColor cyanColor];
    yozikanme.hidden = YES;
    
    [scr addSubview:yozikanme];
    
    
    
    //gozikanmeの生成、場所指定
    gozikanme = [[UIDatePicker alloc]init];
    gozikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    gozikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    gozikanme.minuteInterval = 1;
    gozikanme.backgroundColor = [UIColor purpleColor];
   gozikanme.hidden = YES;
    
    [scr addSubview:gozikanme];

    
    
    
    
    //rokuzikanmeの生成、場所指定
    rokuzikanme = [[UIDatePicker alloc]init];
    rokuzikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    rokuzikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを10分おきにする
    rokuzikanme.minuteInterval = 1;
    rokuzikanme.backgroundColor = [UIColor greenColor];
    rokuzikanme.hidden = YES;
    
    [scr addSubview:rokuzikanme];
    
    

    
    
    
    //nanazikanmeの生成、場所指定
    nanazikanme = [[UIDatePicker alloc]init];
    nanazikanme.frame = CGRectMake(0, 458, 325, 120);
    // 日付の表示モードを変更する(時分を表示)
    nanazikanme.datePickerMode = UIDatePickerModeTime;
    
    // 分の刻みを5分おきにする
    nanazikanme.minuteInterval = 1;
    nanazikanme.backgroundColor = [UIColor orangeColor];
    nanazikanme.hidden = YES;
    
    [scr addSubview:nanazikanme];

    
    
    
    
    
    //×○ボタンの生成、場所指定
    batsu = [[UIButton alloc]init];
    batsu.frame = CGRectMake(0, 458, 32, 30);
    batsu.backgroundColor = [UIColor redColor];
    batsu.hidden = YES;
    [scr addSubview:batsu];
    
    maru = [[UIButton alloc]init];
    maru.frame = CGRectMake(299, 458, 32, 30);
    maru.backgroundColor = [UIColor greenColor];
    maru.hidden = YES;
    [scr addSubview:maru];
    
    oginai = [[UILabel alloc]init];
    oginai.frame = CGRectMake(167, 387, 1000, 71);
    oginai.backgroundColor = [UIColor blueColor];
    oginai.hidden = YES;
    [scr addSubview:oginai];
    
    oginal2 = [[UILabel alloc]init];
    oginal2.frame = CGRectMake(0, 387, 200, 71);
    oginal2.backgroundColor = [UIColor blueColor];
    oginal2.hidden = YES;
    [scr addSubview:oginal2];
    
    
    
    // セグメントのアイテムを用意
    NSArray *sentaku = [NSArray arrayWithObjects:
                      @"1", @"2", @"3", @"4",@"5",@"6",@"7",nil];
    segment = [[UISegmentedControl alloc]initWithItems:sentaku];
    segment.frame = CGRectMake(15 , 408, 300, 30);
    segment.selectedSegmentIndex = 0;
    segment.backgroundColor = [UIColor redColor];
    [segment addTarget:self
                action:@selector(segmentvaluechange:)
      forControlEvents:UIControlEventValueChanged];
    segment.hidden = YES;
    [scr addSubview:segment];
    
    datagetsu1 = [[NSMutableString alloc]init];
     datagetsu2 = [[NSMutableString alloc]init];
     datagetsu3 = [[NSMutableString alloc]init];
     datagetsu4 = [[NSMutableString alloc]init];
     datagetsu5 = [[NSMutableString alloc]init];
     datagetsu6 = [[NSMutableString alloc]init];
     datagetsu7 = [[NSMutableString alloc]init];
    
    dataka1 = [[NSMutableString alloc]init];
    dataka2 = [[NSMutableString alloc]init];
    dataka3 = [[NSMutableString alloc]init];
    dataka4 = [[NSMutableString alloc]init];
    dataka5 = [[NSMutableString alloc]init];
    dataka6 = [[NSMutableString alloc]init];
    dataka7 = [[NSMutableString alloc]init];
    
    datasui1 = [[NSMutableString alloc]init];
    datasui2 = [[NSMutableString alloc]init];
    datasui3 = [[NSMutableString alloc]init];
    datasui4 = [[NSMutableString alloc]init];
    datasui5 = [[NSMutableString alloc]init];
    datasui6 = [[NSMutableString alloc]init];
    datasui7= [[NSMutableString alloc]init];
    
    datamoku1 = [[NSMutableString alloc]init];
    datamoku2 = [[NSMutableString alloc]init];
    datamoku3 = [[NSMutableString alloc]init];
    datamoku4 = [[NSMutableString alloc]init];
    datamoku5 = [[NSMutableString alloc]init];
    datamoku6 = [[NSMutableString alloc]init];
    datamoku7= [[NSMutableString alloc]init];
    
    datakin1 = [[NSMutableString alloc]init];
    datakin2 = [[NSMutableString alloc]init];
    datakin3 = [[NSMutableString alloc]init];
    datakin4 = [[NSMutableString alloc]init];
    datakin5 = [[NSMutableString alloc]init];
    datakin6 = [[NSMutableString alloc]init];
    datakin7= [[NSMutableString alloc]init];
    
   
//もしも今の時間がdate1と同じなら[self getsu1];
    //日付取得http://www.objectivec-iphone.com/foundation/NSDate/components.html
    //日付比較http://www.objectivec-iphone.com/foundation/NSDate/isEqualToDate.html
    now = [NSDate date];
    
   /* NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps;
    
    // 曜日
    comps = [calendar components:NSHourCalendarUnit | NSMinuteCalendarUnit fromDate:now];
    
    NSInteger hour = comps.hour;
    NSLog(@"%d" , hour);
    
    NSInteger minute = comps.minute;
    NSLog(@"%d" , minute);*/
    
    // 2つの日付が同じか?
    
    
        
    //↑これをfor文でAppDelegateの全ての文に！（常に使えるように永遠に）

    // 無限に繰り返す処理
   /* while(YES){
        if ([date1 isEqualToDate:now]) { // yes
            NSLog(@"同じ日付です");
            
        } else { // no
            NSLog(@"異なる日付です");
            
        }

    }*/
    
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }


//segmented controlの234567を指定時
-(void)segmentvaluechange:(id)sender{
    
    switch (segment.selectedSegmentIndex) {
        case 0: // 1時間目選択中
           
            itizikanme.hidden = NO;
            nizikanme.hidden = YES;
            sanzikanme.hidden = YES;
            yozikanme.hidden = YES;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = YES;
            
            break;
    
             
            
        case 1: // 2時間目選択中
            
            itizikanme.hidden = YES;
            nizikanme.hidden = NO;
            sanzikanme.hidden = YES;
            yozikanme.hidden = YES;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = YES;
            
            
            break;
            
        case 2: // 3時間目選択中
            itizikanme.hidden = YES;
            nizikanme.hidden = YES;
            sanzikanme.hidden = NO;
            yozikanme.hidden = YES;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = YES;
            
            break;
            
        case 3:
            // 4時間目選択中
            itizikanme.hidden = YES;
            nizikanme.hidden = YES;
            sanzikanme.hidden = YES;
            yozikanme.hidden = NO;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = YES;
            
            break;
            
        case 4:
            // 5時間目選択中
            itizikanme.hidden = YES;
            nizikanme.hidden = YES;
            sanzikanme.hidden = YES;
            yozikanme.hidden = YES;
            gozikanme.hidden = NO;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = YES;
            
            break;
            
        case 5:
            // 6時間目選択中
            itizikanme.hidden = YES;
            nizikanme.hidden = YES;
            sanzikanme.hidden = YES;
            yozikanme.hidden = YES;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = NO;
            nanazikanme.hidden = YES;
            
            break;
            
        case 6:
            // 7時間目選択中
            itizikanme.hidden = YES;
            nizikanme.hidden = YES;
            sanzikanme.hidden = YES;
            yozikanme.hidden = YES;
            gozikanme.hidden = YES;
            rokuzikanme.hidden = YES;
            nanazikanme.hidden = NO;
        
            break;
            
        default:
            break;
    }
}


//DatePickerを表示
-(IBAction)pushitizikanme{
    //一時間目Picker、×、○、おぎない用Label二つ、セグメンテッドコントロール(segment)を表示
    itizikanme.hidden = NO;
    batsu.hidden = NO;
    maru.hidden = NO;
    oginai.hidden = NO;
    oginal2.hidden = NO;
    segment.hidden = NO;
    //セグメンテッドコントロールの値を0(常に一時間目を選択)
    segment.selectedSegmentIndex = 0;
    //バツを押した時にkesupickerを、maruを押した時にkanryoupickerを呼び出す
    [batsu addTarget:self
            action:@selector(kesupicker) forControlEvents:UIControlEventTouchUpInside];
    [maru addTarget:self
              action:@selector(kanryoupicker) forControlEvents:UIControlEventTouchUpInside];
    
    
}

//バツを押した時
-(void)kesupicker{
    //全てを消す！
    itizikanme.hidden = YES;
    nizikanme.hidden = YES;
    sanzikanme.hidden = YES;
    yozikanme.hidden = YES;
    gozikanme.hidden = YES;
    rokuzikanme.hidden = YES;
    nanazikanme.hidden = YES;
    maru.hidden = YES;
    batsu.hidden = YES;
    oginai.hidden = YES;
    oginal2.hidden = YES;
    segment.hidden = YES;
    
}
//マルを押した時
-(void)kanryoupicker{
    //全てを消す！
    itizikanme.hidden = YES;
    nizikanme.hidden = YES;
    sanzikanme.hidden = YES;
    yozikanme.hidden = YES;
    gozikanme.hidden = YES;
    rokuzikanme.hidden = YES;
    nanazikanme.hidden = YES;
    maru.hidden = YES;
    batsu.hidden = YES;
    oginai.hidden = YES;
    oginal2.hidden = YES;
    segment.hidden = YES;
    //時間は入ってるが時間のデータが入ってないのかそれとも時間自体入ってないかを調べる
    
    //DatePickerの値保存のコードも入れるべき
    //date1 = itizikanme.date;
    //date1 = [date1 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date1];
    //NSLog(@"%@" , date1);
    
    /*date2 = nizikanme.date;
    date2 = [date2 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date2];
    //NSLog(@"%@" , date2);
    
    date3 = sanzikanme.date;
    date3 = [date3 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date3];
    //NSLog(@"%@" , date3);
    
    
    date4 = yozikanme.date;
    date4 = [date4 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date4];
    //NSLog(@"%@" , date4);
    
    date5 = gozikanme.date;
    date5 = [date5 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date5];
   // NSLog(@"%@" , date5);
    
    date6 = rokuzikanme.date;
    date6 = [date6 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date6];
  //  NSLog(@"%@" , date6);
    
    date7 = nanazikanme.date;
    date7 = [date7 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date7];
   // NSLog(@"%@" , date7);*/
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //2が月曜なので注意
    // 現在日付を取得
    now = [NSDate date];
    
    NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps;
    
    // 曜日
    comps = [calendar components:NSWeekdayCalendarUnit fromDate:now];
    NSInteger weekday = comps.weekday; // 曜日(1が日曜日 7が土曜日)
    NSLog(@"%d" , weekday);
    
    
    if(weekday == 2 ){//とりま実験用です、頑張ろしんどいのは分かるぜ
        if(now == itizikanme.date){
           UILocalNotification *notice = [[UILocalNotification alloc] init];
            notice.alertBody = @"アラートボタン１番です";
            notice.alertAction = @"起動";
            //[[UIApplication sharedApplication] presentLocalNotificationNow:notice];
            // http://stackoverflow.com/questions/19582943/uidate-picker-the-current-time-is-not-returned-in-default
            
        }
        
        
        
    }
    
    
    
    
    
    
    if(weekday == 3 ){
        
        
        // NSDate *date = [NSDate dateWithTimeIntervalSinceNow:5.0f];
        UILocalNotification *notice = [[UILocalNotification alloc] init];
        // notice.fireDate = itizikanme.date;
        notice.timeZone = [NSTimeZone defaultTimeZone];
        [notice setFireDate:itizikanme.date];
        notice.alertBody = @"アラートボタン2番です";
        notice.alertAction = @"起動";
        
        
        [[UIApplication sharedApplication] scheduleLocalNotification:notice];
        
        
        
        
    }
    
    


}


//52行目を参照（それぞれの時間にそれぞれの内容を通知、メソッド読みもその時間に）...
//ViewDidLoadで今の時間を取得、もしそれとdate1が同じならgetsu1を

-(void)getsu1{
    date1 = itizikanme.date;
    date1 = [date1 initWithTimeInterval:[[NSTimeZone systemTimeZone] secondsFromGMT] sinceDate:date1];
    NSLog(@"%@" , date1);
    
    
    
    
    now = [NSDate date];
    
    NSCalendar *calendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *comps;
    
    // 曜日
    comps = [calendar components:NSWeekdayCalendarUnit fromDate:now];
    NSInteger weekday = comps.weekday; // 曜日(1が日曜日 7が土曜日)
    NSLog(@"%d" , weekday);
    
    
    if(weekday == 7 ){//実験用の曜日
        
        UILocalNotification *notice = [[UILocalNotification alloc] init];
        NSLog(@"%@" , date1);
        notice.fireDate = date1;
        notice.timeZone = [NSTimeZone defaultTimeZone];
        //[notice setFireDate:itizikanme.date];
        notice.alertBody = @"アラートボタン１番です";
        notice.alertAction = @"起動";
        
        
        [[UIApplication sharedApplication] scheduleLocalNotification:notice];
        
        //234567まで、通知内容はdatagetsu1
        
        
        
        
    }
    
    

    
    
    
    
    
    
    
    

}



/*-(void)tuuchi{
    
}*/


//------------------------------------------------------------------------------------------------

//キーボードについて
- (void)registerForKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];

    
    
}



- (void)keyboardWasShown:(NSNotification*)aNotification
{
    
    CGPoint scrollPoint = CGPointMake(0.0,250.0);
    [scr setContentOffset:scrollPoint animated:YES];
}

- (void)keyboardWillBeHidden:(NSNotification*)aNotification
{
    [scr setContentOffset:CGPointZero animated:YES];

}


-(IBAction)kyoukaend{
    if ( [kyouka.text isEqualToString: @"" ]) {
        {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"内容を入力してください"
                              message:@""
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles: nil];
        
        // アラートビューを表示
        [alert show];
                }
        
    }
    else{
        [kyousitsumei becomeFirstResponder];

    }
    
    
    
    
    
    

}

-(IBAction)kyousitsuend{
     if ( [kyousitsumei.text isEqualToString: @"" ]) {
         {
             UIAlertView *alert = [[UIAlertView alloc]
                                   initWithTitle:@"内容を入力してください"
                                   message:@""
                                   delegate:self
                                   cancelButtonTitle:@"OK"
                                   otherButtonTitles: nil];
             
             // アラートビューを表示
             [alert show];
         }
         
     }
     else{
         [sensei becomeFirstResponder];
     }
    
}



-(IBAction)senseiend{
    
    if ( [sensei.text isEqualToString: @"" ]) {
        {
            UIAlertView *alert = [[UIAlertView alloc]
                                  initWithTitle:@"内容を入力してください"
                                  message:@""
                                  delegate:self
                                  cancelButtonTitle:@"OK"
                                  otherButtonTitles: nil];
            
            // アラートビューを表示
            [alert show];
        }
        
    }
    else{
        [sensei resignFirstResponder];
    }

  
}
//------------------------------------------------------------------------------------------------

//ここからボタン押すコード、全てをNSMutableStringにするのと初期化、メモリを取るのをしてから

-(IBAction)pushgetsu1{
    //datagetsu1の容量置き
    datagetsu1 = [NSMutableString stringWithCapacity:100];
    
    
    if([lgetsu1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        lgetsu1.text = [NSString stringWithFormat:@""];
        //datagetsu1の内容をからっぽに
        datagetsu1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu1);
        
    }
    else{
        lgetsu1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
       //NSMutableStringを使う
        [datagetsu1 setString:kyouka.text];
        [datagetsu1 appendFormat:@"%@" , kyousitsumei];
        [datagetsu1 appendFormat:@"%@" , sensei];
       // NSLog(@"%@" , datagetsu1);
        }
    
    
   }


-(IBAction)pushgetsu2{
    //容量置き
    datagetsu2 = [NSMutableString stringWithCapacity:100];
    
    if([lgetsu2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
         //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu2.text = [NSString stringWithFormat:@""];
        
       
        datagetsu2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu2);
        
    }
    else{
        lgetsu2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu2 setString:kyouka.text];
        [datagetsu2 appendFormat:@"%@" , kyousitsumei];
        [datagetsu2 appendFormat:@"%@" , sensei];
       // NSLog(@"%@" , datagetsu2);
       
    }

    
    
}




-(IBAction)pushgetsu3{
    //容量置き
    datagetsu3 = [NSMutableString stringWithCapacity:100];
    
    if([lgetsu3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu3.text = [NSString stringWithFormat:@""];
        
        
        datagetsu3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu3);
        
    }
    else{
        lgetsu3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu3 setString:kyouka.text];
        [datagetsu3 appendFormat:@"%@" , kyousitsumei];
        [datagetsu3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu3);
    }
    
    
}






-(IBAction)pushgetsu4{
    //容量置き
    datagetsu4 = [NSMutableString stringWithCapacity:100];
    
    if([lgetsu4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu4.text = [NSString stringWithFormat:@""];
        
        
        datagetsu4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lgetsu4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu4 setString:kyouka.text];
        [datagetsu4 appendFormat:@"%@" , kyousitsumei];
        [datagetsu4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}






-(IBAction)pushgetsu5{
    //容量置き
    datagetsu5 = [NSMutableString stringWithCapacity:100];
    
    if([lgetsu5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu5.text = [NSString stringWithFormat:@""];
        
        
        datagetsu5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu5);
        
    }
    else{
        lgetsu5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu5 setString:kyouka.text];
        [datagetsu5 appendFormat:@"%@" , kyousitsumei];
        [datagetsu5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu5);
    }
    
    
}






-(IBAction)pushgetsu6{
    //容量置き
    datagetsu6 = [NSMutableString stringWithCapacity:100];
    
    if([lgetsu6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu6.text = [NSString stringWithFormat:@""];
        
        
        datagetsu6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lgetsu6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu6 setString:kyouka.text];
        [datagetsu6 appendFormat:@"%@" , kyousitsumei];
        [datagetsu6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}





-(IBAction)pushgetsu7{
    //容量置き
    datagetsu7 = [NSMutableString stringWithCapacity:100];

    
    if([lgetsu7.text isEqual:kyouka.text])/*取り消しメソッド*/{
                //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lgetsu7.text = [NSString stringWithFormat:@""];
        
        
        datagetsu7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lgetsu7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datagetsu7 setString:kyouka.text];
        [datagetsu7 appendFormat:@"%@" , kyousitsumei];
        [datagetsu7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}






-(IBAction)pushka1{
    //容量置き
    dataka1 = [NSMutableString stringWithCapacity:100];
    
    if([lka1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka1.text = [NSString stringWithFormat:@""];
        
        
        dataka1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lka1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka1 setString:kyouka.text];
        [dataka1 appendFormat:@"%@" , kyousitsumei];
        [dataka1 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}



-(IBAction)pushka2{
    
    //容量置き
    dataka2 = [NSMutableString stringWithCapacity:100];
    
    if([lka2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka2.text = [NSString stringWithFormat:@""];
        
        
        dataka2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lka2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka2 setString:kyouka.text];
        [dataka2 appendFormat:@"%@" , kyousitsumei];
        [dataka2 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}





-(IBAction)pushka3{
    //容量置き
    dataka3 = [NSMutableString stringWithCapacity:100];
    
    if([lka3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka3.text = [NSString stringWithFormat:@""];
        
        
        dataka3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka3);
        
    }
    else{
        lka3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka3 setString:kyouka.text];
        [dataka3 appendFormat:@"%@" , kyousitsumei];
        [dataka3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka3);
    }
    
    
}






-(IBAction)pushka4{
    //容量置き
    dataka4 = [NSMutableString stringWithCapacity:100];
    
    if([lka4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka4.text = [NSString stringWithFormat:@""];
        
        
        dataka4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lka4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka4 setString:kyouka.text];
        [dataka4 appendFormat:@"%@" , kyousitsumei];
        [dataka4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}






-(IBAction)pushka5{
    dataka5 = [NSMutableString stringWithCapacity:100];
    if([lka5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka5.text = [NSString stringWithFormat:@""];
        
        
        dataka5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , datagetsu4);
        
    }
    else{
        lka5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka5 setString:kyouka.text];
        [dataka5 appendFormat:@"%@" , kyousitsumei];
        [dataka5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , datagetsu4);
    }
    
    
}






-(IBAction)pushka6{
    dataka6 = [NSMutableString stringWithCapacity:100];
    
    if([lka6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka6.text = [NSString stringWithFormat:@""];
        
        
        dataka6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lka6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka6 setString:kyouka.text];
        [dataka6 appendFormat:@"%@" , kyousitsumei];
        [dataka6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}






-(IBAction)pushka7{
    dataka7 = [NSMutableString stringWithCapacity:100];
    
    if([lka7.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lka7.text = [NSString stringWithFormat:@""];
        
        
        dataka7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lka7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [dataka7 setString:kyouka.text];
        [dataka7 appendFormat:@"%@" , kyousitsumei];
        [dataka7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui1{
    datasui1 = [NSMutableString stringWithCapacity:100];
    
    if([lsui1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui1.text = [NSString stringWithFormat:@""];
        
        
        datasui1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui1 setString:kyouka.text];
        [datasui1 appendFormat:@"%@" , kyousitsumei];
        [datasui1 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui2{
    datasui2 = [NSMutableString stringWithCapacity:100];
    
    if([lsui2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui2.text = [NSString stringWithFormat:@""];
        
        
        datasui2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui2 setString:kyouka.text];
        [datasui2 appendFormat:@"%@" , kyousitsumei];
        [datasui2 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui3{
    datasui3 = [NSMutableString stringWithCapacity:100];
    
    if([lsui3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui3.text = [NSString stringWithFormat:@""];
        
        
        datasui3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui3 setString:kyouka.text];
        [datasui3 appendFormat:@"%@" , kyousitsumei];
        [datasui3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui4{
    datasui4 = [NSMutableString stringWithCapacity:100];
    
    if([lsui4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui4.text = [NSString stringWithFormat:@""];
        
        
        datasui4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui4 setString:kyouka.text];
        [datasui4 appendFormat:@"%@" , kyousitsumei];
        [datasui4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui5{
    datasui5 = [NSMutableString stringWithCapacity:100];
    
    if([lsui5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui5.text = [NSString stringWithFormat:@""];
        
        
        datasui5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui5 setString:kyouka.text];
        [datasui5 appendFormat:@"%@" , kyousitsumei];
        [datasui5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui6{
    datasui6 = [NSMutableString stringWithCapacity:100];
    
    if([lsui6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui6.text = [NSString stringWithFormat:@""];
        
        
        datasui6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui6 setString:kyouka.text];
        [datasui6 appendFormat:@"%@" , kyousitsumei];
        [datasui6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushsui7{
    datasui7 = [NSMutableString stringWithCapacity:100];
    
    if([lsui7.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lsui7.text = [NSString stringWithFormat:@""];
        
        
        datasui7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lsui7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datasui7 setString:kyouka.text];
        [datasui7 appendFormat:@"%@" , kyousitsumei];
        [datasui7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku1{
    datamoku1 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku1.text = [NSString stringWithFormat:@""];
        
        
        datamoku1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku1 setString:kyouka.text];
        [datamoku1 appendFormat:@"%@" , kyousitsumei];
        [datamoku1 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku2{
    datamoku2 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku2.text = [NSString stringWithFormat:@""];
        
        
        datamoku2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku2 setString:kyouka.text];
        [datamoku2 appendFormat:@"%@" , kyousitsumei];
        [datamoku2 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku3{
    datamoku3 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku3.text = [NSString stringWithFormat:@""];
        
        
        datamoku3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku3 setString:kyouka.text];
        [datamoku3 appendFormat:@"%@" , kyousitsumei];
        [datamoku3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku4{
    datamoku4 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku4.text = [NSString stringWithFormat:@""];
        
        
        datamoku4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku4 setString:kyouka.text];
        [datamoku4 appendFormat:@"%@" , kyousitsumei];
        [datamoku4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku5{
    datamoku5 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku5.text = [NSString stringWithFormat:@""];
        
        
        datamoku5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku5 setString:kyouka.text];
        [datamoku5 appendFormat:@"%@" , kyousitsumei];
        [datamoku5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushmoku6{
    datamoku6 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku6.text = [NSString stringWithFormat:@""];
        
        
        datamoku6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku6 setString:kyouka.text];
        [datamoku6 appendFormat:@"%@" , kyousitsumei];
        [datamoku6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}






-(IBAction)pushmoku7{
    datamoku7 = [NSMutableString stringWithCapacity:100];
    
    if([lmoku7.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lmoku7.text = [NSString stringWithFormat:@""];
        
        
        datamoku7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lmoku7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datamoku7 setString:kyouka.text];
        [datamoku7 appendFormat:@"%@" , kyousitsumei];
        [datamoku7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin1{
    datakin1 = [NSMutableString stringWithCapacity:100];
    
    if([lkin1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin1.text = [NSString stringWithFormat:@""];
        
        
        datakin1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin1 setString:kyouka.text];
        [datakin1 appendFormat:@"%@" , kyousitsumei];
        [datakin1 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin2{
    datakin2 = [NSMutableString stringWithCapacity:100];
    
    if([lkin2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin2.text = [NSString stringWithFormat:@""];
        
    
        datakin2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin2 setString:kyouka.text];
        [datakin2 appendFormat:@"%@" , kyousitsumei];
        [datakin2 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin3{
    datakin3 = [NSMutableString stringWithCapacity:100];
    
    if([lkin3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin3.text = [NSString stringWithFormat:@""];
        
        
        datakin3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin3 setString:kyouka.text];
        [datakin3 appendFormat:@"%@" , kyousitsumei];
        [datakin3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin4{
    datakin4 = [NSMutableString stringWithCapacity:100];
    
    if([lkin4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin4.text = [NSString stringWithFormat:@""];
        
        
        datakin4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin4 setString:kyouka.text];
        [datakin4 appendFormat:@"%@" , kyousitsumei];
        [datakin4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin5{
    datakin5 = [NSMutableString stringWithCapacity:100];
    
    if([lkin5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin5.text = [NSString stringWithFormat:@""];
        
        
        datakin5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin5 setString:kyouka.text];
        [datakin5 appendFormat:@"%@" , kyousitsumei];
        [datakin5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin6{
    datakin6 = [NSMutableString stringWithCapacity:100];
    
    if([lkin6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin6.text = [NSString stringWithFormat:@""];
        
        
        datakin6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin6 setString:kyouka.text];
        [datakin6 appendFormat:@"%@" , kyousitsumei];
        [datakin6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushkin7{
    datakin7 = [NSMutableString stringWithCapacity:100];
    
    if([lkin7.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        lkin7.text = [NSString stringWithFormat:@""];
        
        
        datakin7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        lkin7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datakin7 setString:kyouka.text];
        [datakin7 appendFormat:@"%@" , kyousitsumei];
        [datakin7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}






-(IBAction)pushdo1{
    datado1 = [NSMutableString stringWithCapacity:100];
    
    if([ldo1.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo1.text = [NSString stringWithFormat:@""];
        
        
        datado1 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo1.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado1 setString:kyouka.text];
        [datado1 appendFormat:@"%@" , kyousitsumei];
        [datado1 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}







-(IBAction)pushdo2{
    datado2 = [NSMutableString stringWithCapacity:100];
    
    if([ldo2.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo2.text = [NSString stringWithFormat:@""];
        
        
        datado2 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo2.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado2 setString:kyouka.text];
        [datado2 appendFormat:@"%@" , kyousitsumei];
        [datado2 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushdo3{
    datado3 = [NSMutableString stringWithCapacity:100];
    
    if([ldo3.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo3.text = [NSString stringWithFormat:@""];
        
        
        datado3 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo3.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado3 setString:kyouka.text];
        [datado3 appendFormat:@"%@" , kyousitsumei];
        [datado3 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushdo4{
    datado4 = [NSMutableString stringWithCapacity:100];
    
    if([ldo4.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo4.text = [NSString stringWithFormat:@""];
        
        
        datado4 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo4.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado4 setString:kyouka.text];
        [datado4 appendFormat:@"%@" , kyousitsumei];
        [datado4 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushdo5{
    datado5 = [NSMutableString stringWithCapacity:100];
    
    if([ldo5.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo5.text = [NSString stringWithFormat:@""];
        
        
        datado5 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo5.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado5 setString:kyouka.text];
        [datado5 appendFormat:@"%@" , kyousitsumei];
        [datado5 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}





-(IBAction)pushdo6{
    datado6 = [NSMutableString stringWithCapacity:100];
    
    if([ldo6.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo6.text = [NSString stringWithFormat:@""];
        
        
        datado6 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo6.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado6 setString:kyouka.text];
        [datado6 appendFormat:@"%@" , kyousitsumei];
        [datado6 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}




-(IBAction)pushdo7{
    datado7 = [NSMutableString stringWithCapacity:100];
    
    if([ldo7.text isEqual:kyouka.text])/*取り消しメソッド*/{
        
        
        //もし既に入力されている内容が入っていたら（つまり、時間割のコマ二回押しで取り消し)内容をからっぽに
        ldo7.text = [NSString stringWithFormat:@""];
        
        
        datado7 = [NSMutableString stringWithFormat:@""];
        //NSLog(@"%@" , dataka6);
        
    }
    else{
        ldo7.text = kyouka.text;
        //.mのviewcontrollerからendの間までにdatagetsu1を宣言、kyoukaとsenseiとkyousitsumeiを入れる
        //NSMutableStringを使う
        [datado7 setString:kyouka.text];
        [datado7 appendFormat:@"%@" , kyousitsumei];
        [datado7 appendFormat:@"%@" , sensei];
        //NSLog(@"%@" , dataka6);
    }
    
    
}



//ボタン終了



@end
