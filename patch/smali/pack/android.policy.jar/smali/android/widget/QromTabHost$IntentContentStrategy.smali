.class Landroid/widget/QromTabHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 991
    iput-object p1, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 993
    iput-object p3, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 994
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/content/Intent;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/content/Intent;
    .param p4, "x3"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 984
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromTabHost$IntentContentStrategy;-><init>(Landroid/widget/QromTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 5

    .prologue
    .line 997
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, v2, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_0

    .line 998
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1001
    :cond_0
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->this$0:Landroid/widget/QromTabHost;

    iget-object v2, v2, Landroid/widget/QromTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 1002
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1003
    .local v1, "wd":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1004
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1005
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Landroid/widget/QromTabHost;->access$1000(Landroid/widget/QromTabHost;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1008
    :cond_1
    iput-object v1, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 1016
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1017
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1019
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1021
    :cond_2
    iget-object v2, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 1002
    .end local v1    # "wd":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Landroid/widget/QromTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    :cond_0
    return-void
.end method