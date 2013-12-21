//
//  CompareObjcMatcherTests.m
//  CompareObjcMatcherTests
//
//  Created by ytokoro on 12/21/13.
//  Copyright (c) 2013 tokoro. All rights reserved.
//

#import <XCTest/XCTest.h>

#define EXP_SHORTHAND
#import "Expecta.h"

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

@interface CompareObjcMatcherTests : XCTestCase
@end

@implementation CompareObjcMatcherTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExampleByXCTAsserts
{
  int i1 = 100;
  NSInteger i2 = 100;
  NSNumber *number = @100;
  NSString *string = @"OK";

  XCTAssertEqual(i1, 100);
  XCTAssertEqual((int)i2, 100);
  XCTAssertEqualObjects(number, @100);
  XCTAssertEqualObjects(string, @"OK");
  
  XCTAssertEqualObjects(string, @"NG");
  
  XCTAssertTrue([number isKindOfClass:<#(__unsafe_unretained Class)#>:[NSString class]]);
}

- (void)testExampleByExpecta
{
  int i1 = 100;
  NSInteger i2 = 100;
  NSNumber *number = @100;
  NSString *string = @"OK";
  
  expect(i1).to.equal(100);
  expect(i2).to.equal(100);
  expect(number).to.equal(@100);
  expect(string).to.equal(@"OK");
  
  expect(string).to.equal(@"NG");
  
  expect(number).to.beKindOf([NSString class]);
}

- (void)testExampleByOCHamcrest
{
  int i1 = 100;
  NSInteger i2 = 100;
  NSNumber *number = @100;
  NSString *string = @"OK";
  
  assertThatInt(i1, equalToInt(100));
  assertThatInteger(i2, equalToInteger(100));
  assertThat(number, equalTo(@100));
  assertThat(string, equalTo(@"OK"));
  
  assertThat(string, equalTo(@"NG"));
  
  assertThat(number, instanceOf([NSString class]));
}

@end
