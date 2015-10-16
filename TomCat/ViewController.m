//
//  ViewController.m
//  002-tomcatGame
//
//  Created by dyf on 14/10/31.
//  Copyright (c) 2014年 dyf. All rights reserved.
//
/*
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomImageView;

@end

@implementation ViewController
- (IBAction)touchHeadOnClick:(UIButton *)sender {
    [self tomAnimateWith:@"knockout" imageCount:81];
}

//- (void)clearImages
//{
//    self.tomImageView.animationImages = nil;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)eatOnClick:(UIButton *)sender {
    [self tomAnimateWith:@"eat" imageCount:40];
}


#pragma mark - 动画执行方法
- (void)tomAnimateWith:(NSString *)fileName imageCount:(NSInteger)imageCount
{
    // 0.如果动画正在执行,我们就直接不执行以下代码
    if (self.tomImageView.isAnimating) {
        return;
    }
    
    // 1.首先创建图片数组
    NSMutableArray *tomImages = [NSMutableArray array];
    
    for (int i = 0; i < imageCount; i++) {
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d.jpg", fileName, i];
        
        //        // 1.创建图片的第一种方法(不用)
        //        UIImage *image = [UIImage imageNamed:imageName];
        
        
        // 这种方式获取图片不会有内存溢出的问题
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:nil];
        
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
        [tomImages addObject:image];
    }
    
    // 2.设置动画过程
    
    // 2.1添加动画执行的图片数组
    [self.tomImageView setAnimationImages:tomImages];
    
    // 2.2设置动画执行的时间
    [self.tomImageView setAnimationDuration:self.tomImageView.animationImages.count * 0.1];
    
    // 2.2设置动画执行的次数
    [self.tomImageView setAnimationRepeatCount:1];
    
    // 2.3设置动画开始执行
    [self.tomImageView startAnimating];
    
    
    // 3.在动画结束之后清空数组
    //    [self performSelector:@selector(clearImages) withObject:nil afterDelay:self.tomImageView.animationDuration];
    
    [self.tomImageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tomImageView.animationDuration];
}

@end
*/