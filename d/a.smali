.class public Ld/a;
.super Lc/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$a;
    }
.end annotation


# instance fields
.field public final b:Ld/a$a;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;Lc/b;)V
    .locals 1

    invoke-direct {p0}, Lc/a;-><init>()V

    new-instance v0, Ld/a$a;

    invoke-direct {v0, p1, p2}, Ld/a$a;-><init>(Lio/bidmachine/analytics/entity/AnalyticsMetricConfig;Lc/b;)V

    iput-object v0, p0, Ld/a;->b:Ld/a$a;

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    iget-object v0, p0, Ld/a;->b:Ld/a$a;

    const-string v1, "max_revenue_events"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    return-void
.end method
