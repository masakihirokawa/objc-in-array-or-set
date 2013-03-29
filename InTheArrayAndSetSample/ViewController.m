//
//  ViewController.m
//  InTheArrayAndSetSample
//
//  Created by 廣川政樹 on 2013/03/28.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を作成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"apple",
                      @"grapes",
                      @"orange",
                      nil];
  
  //セットを作成する
  NSSet *mySet = [NSSet setWithArray:myArray];
  
  //順序付けされたセットを作成する
  NSOrderedSet *orderdSet;
  orderdSet = [NSOrderedSet orderedSetWithArray:myArray];
  
  //オブジェクトを全て取得する
  id value;
  for (value in myArray) {
    NSLog(@"%@", value);
  }
  
  //高速列挙を使用してセットからオブジェクトを取得する
  for (value in mySet) {
    NSLog(@"%@", mySet);
  }
  
  //高速列挙を使用して順序付けされたセットからオブジェクトを取得する
  for (value in orderdSet) {
    NSLog(@"%@", value);
  }
}

@end
