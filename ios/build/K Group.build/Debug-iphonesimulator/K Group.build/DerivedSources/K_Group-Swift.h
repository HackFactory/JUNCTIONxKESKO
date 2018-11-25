// Generated by Apple Swift version 4.2.1 (swiftlang-1000.11.42 clang-1000.11.45.1)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if __has_feature(modules)
@import CoreGraphics;
@import Foundation;
@import HPGrowingTextView;
@import NoChat;
@import ObjectiveC;
@import UIKit;
#endif

#import "/Users/yar/Desktop/iOS Education/Projects/K Group/ios/K Group/K_Group-Bridging-Header.h"

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="K_Group",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC7K_Group11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UIButton;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC7K_Group18ChatViewController")
@interface ChatViewController : UIViewController
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified startMessagingButton;
- (IBAction)startMessaging:(id _Nonnull)sender;
- (void)viewDidLoad;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITableView;
@class UITableViewCell;

SWIFT_CLASS("_TtC7K_Group19ChatsViewController")
@interface ChatsViewController : UITableViewController
- (void)viewDidLoad;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section SWIFT_WARN_UNUSED_RESULT;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath SWIFT_WARN_UNUSED_RESULT;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)initWithStyle:(UITableViewStyle)style OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UITextField;

SWIFT_CLASS("_TtC7K_Group21InitialViewController")
@interface InitialViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic, weak) IBOutlet UIButton * _Null_unspecified loginButton;
- (void)viewDidLoad;
- (BOOL)textFieldShouldReturn:(UITextField * _Nonnull)textField SWIFT_WARN_UNUSED_RESULT;
- (void)textFieldDidChange:(UITextField * _Nonnull)textField;
- (IBAction)buttonTouchUpInside:(id _Nonnull)sender;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@protocol NOCChatItemCellLayout;

SWIFT_CLASS("_TtC7K_Group17MMBaseMessageCell")
@interface MMBaseMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end

@protocol NOCChatItem;

SWIFT_CLASS("_TtC7K_Group23MMBaseMessageCellLayout")
@interface MMBaseMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end

@class HPGrowingTextView;

SWIFT_CLASS("_TtC7K_Group20MMChatInputTextPanel")
@interface MMChatInputTextPanel : NOCChatInputPanel <HPGrowingTextViewDelegate>
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (void)endInputting:(BOOL)animated;
- (void)adjustForSize:(CGSize)size keyboardHeight:(CGFloat)keyboardHeight duration:(NSTimeInterval)duration animationCurve:(int32_t)animationCurve;
- (void)changeToSize:(CGSize)size keyboardHeight:(CGFloat)keyboardHeight duration:(NSTimeInterval)duration;
- (void)growingTextView:(HPGrowingTextView * _Null_unspecified)growingTextView willChangeHeight:(float)height;
- (void)growingTextViewDidBeginEditing:(HPGrowingTextView * _Null_unspecified)growingTextView;
- (BOOL)growingTextView:(HPGrowingTextView * _Null_unspecified)growingTextView shouldChangeTextInRange:(NSRange)range replacementText:(NSString * _Null_unspecified)text SWIFT_WARN_UNUSED_RESULT;
@end

@class UIScrollView;
@class UINavigationController;

SWIFT_CLASS("_TtC7K_Group20MMChatViewController")
@interface MMChatViewController : NOCChatViewController <UINavigationControllerDelegate>
+ (Class _Nullable)cellLayoutClassForItemType:(NSString * _Nonnull)type SWIFT_WARN_UNUSED_RESULT;
+ (Class _Nullable)inputPanelClass SWIFT_WARN_UNUSED_RESULT;
- (void)registerChatItemCells;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)scrollViewDidScroll:(UIScrollView * _Nonnull)scrollView;
- (void)navigationController:(UINavigationController * _Nonnull)navigationController willShowViewController:(UIViewController * _Nonnull)viewController animated:(BOOL)animated;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC7K_Group17MMDateMessageCell")
@interface MMDateMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group23MMDateMessageCellLayout")
@interface MMDateMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC7K_Group19MMSystemMessageCell")
@interface MMSystemMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group25MMSystemMessageCellLayout")
@interface MMSystemMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC7K_Group17MMTextMessageCell")
@interface MMTextMessageCell : MMBaseMessageCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group23MMTextMessageCellLayout")
@interface MMTextMessageCellLayout : MMBaseMessageCellLayout
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
@end

@class MKMapView;

SWIFT_CLASS("_TtC7K_Group17MapViewController")
@interface MapViewController : UIViewController
@property (nonatomic, weak) IBOutlet MKMapView * _Null_unspecified mapView;
- (void)viewDidLoad;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7K_Group7Message")
@interface Message : NSObject <NOCChatItem>
- (NSString * _Nonnull)uniqueIdentifier SWIFT_WARN_UNUSED_RESULT;
- (NSString * _Nonnull)type SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7K_Group14MessageManager")
@interface MessageManager : NSObject <NOCClientDelegate>
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)clientDidReceiveMessage:(NSDictionary * _Nonnull)message;
@end



@class UITraitCollection;

SWIFT_CLASS("_TtC7K_Group14TGAvatarButton")
@interface TGAvatarButton : UIButton
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)traitCollectionDidChange:(UITraitCollection * _Nullable)previousTraitCollection;
@end


SWIFT_CLASS("_TtC7K_Group17TGBaseMessageCell")
@interface TGBaseMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group23TGBaseMessageCellLayout")
@interface TGBaseMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC7K_Group20TGChatInputTextPanel")
@interface TGChatInputTextPanel : NOCChatInputPanel <HPGrowingTextViewDelegate>
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
- (void)endInputting:(BOOL)animated;
- (void)adjustForSize:(CGSize)size keyboardHeight:(CGFloat)keyboardHeight duration:(NSTimeInterval)duration animationCurve:(int32_t)animationCurve;
- (void)changeToSize:(CGSize)size keyboardHeight:(CGFloat)keyboardHeight duration:(NSTimeInterval)duration;
- (void)growingTextView:(HPGrowingTextView * _Null_unspecified)growingTextView willChangeHeight:(float)height;
- (void)growingTextViewDidChange:(HPGrowingTextView * _Null_unspecified)growingTextView;
- (void)didTapSendButton:(UIButton * _Nonnull)sender;
@end


SWIFT_CLASS("_TtC7K_Group20TGChatViewController")
@interface TGChatViewController : NOCChatViewController <UINavigationControllerDelegate>
+ (Class _Nullable)cellLayoutClassForItemType:(NSString * _Nonnull)type SWIFT_WARN_UNUSED_RESULT;
+ (Class _Nullable)inputPanelClass SWIFT_WARN_UNUSED_RESULT;
- (void)registerChatItemCells;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)viewDidLoad;
- (void)navigationController:(UINavigationController * _Nonnull)navigationController willShowViewController:(UIViewController * _Nonnull)viewController animated:(BOOL)animated;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil SWIFT_UNAVAILABLE;
@end


SWIFT_CLASS("_TtC7K_Group19TGClockProgressView")
@interface TGClockProgressView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
@end


SWIFT_CLASS("_TtC7K_Group17TGDateMessageCell")
@interface TGDateMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group23TGDateMessageCellLayout")
@interface TGDateMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC7K_Group20TGDeliveryStatusView")
@interface TGDeliveryStatusView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
@end


SWIFT_CLASS("_TtC7K_Group19TGSystemMessageCell")
@interface TGSystemMessageCell : NOCChatItemCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group25TGSystemMessageCellLayout")
@interface TGSystemMessageCellLayout : NSObject <NOCChatItemCellLayout>
@property (nonatomic, copy) NSString * _Nonnull reuseIdentifier;
@property (nonatomic, strong) id <NOCChatItem> _Nonnull chatItem;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_DEPRECATED_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC7K_Group17TGTextMessageCell")
@interface TGTextMessageCell : TGBaseMessageCell
+ (NSString * _Nonnull)reuseIdentifier SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@property (nonatomic, strong) id <NOCChatItemCellLayout> _Nullable layout;
@end


SWIFT_CLASS("_TtC7K_Group23TGTextMessageCellLayout")
@interface TGTextMessageCellLayout : TGBaseMessageCellLayout
- (nonnull instancetype)initWithChatItem:(id <NOCChatItem> _Nonnull)chatItem cellWidth:(CGFloat)width OBJC_DESIGNATED_INITIALIZER;
- (void)calculateLayout;
@end


SWIFT_CLASS("_TtC7K_Group11TGTitleView")
@interface TGTitleView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)traitCollectionDidChange:(UITraitCollection * _Nullable)previousTraitCollection;
@end





#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
