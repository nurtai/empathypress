//
//  AboutAppViewController.m
//  EmpathyPress
//
//  Created by Nurtai on 3/29/2557 BE.
//  Copyright (c) 2557 BE Nurtai. All rights reserved.
//

#import "AboutAppViewController.h"

@interface AboutAppViewController ()

@end

@implementation AboutAppViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@synthesize richText;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
    
    NSString *htmlString = @"<b>Сургалт :</b> Төрөл бүрийн мэргэжлийн сургалт, семинар, явуулахын зэрэгцээ турк хэл, математик, IQ, компьютерийн сургалтуудыг зохион явуулдаг.</br> <b>Зөвлөгөө:</b> Оюутан, сурагчдад гадаад, дотоодын их дээдсургуулиудын талаар мэдээлээл олгож, зөвлөгөө өгдөг. Туркээс ирсэн Турк хүмүүст эсвэл Турк руу явах Монгол хүмүүст аялал зохион байгуулах, ажилд жуулчлах үйлчилгээг үзүүлдэг. </br><b>Хэвлэл :</b> Гэр бүл, хүүхэд, сургалт хүмүүжлийн талаар нийт 160 гаруй бүтээлийг турк хэлнээс монгол хэл рүү орчуулж хэвлэн гаргасан. Эдгээр бүтээлүүдийн зарим нь борлуулалтаараа тэргүүлсэн шилдэг номын жагсаалтанд орсон. Түүнчлэн 3 сар тутамд боловсрол, соёл, шинжлэх ухааны “Шинэ Ертөнц” сэтгүүлийг эрхлэн гаргадаг.</br>Манай төвөөс эрхлэн гаргаж буй номууд бүх насны хүмүүст зориулсан бүтээл юм. Эмпати хэвлэлийн газар арвин их мэдээлэл агуулсан эдгээр номоо ард түмэндээ толилуулахдаа боловсролыг дээдэлдгийн хувьд боловсролын салбарын сайхан талыг илүү харуулахыг зорьж байна.";
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    richText.attributedText = attributedString;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)closeBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
