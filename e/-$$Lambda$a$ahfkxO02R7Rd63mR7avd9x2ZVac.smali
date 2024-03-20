.class public final synthetic Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Le/a;

.field public final synthetic f$1:Lio/bidmachine/analytics/entity/Event;


# direct methods
.method public synthetic constructor <init>(Le/a;Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;->f$0:Le/a;

    iput-object p2, p0, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;->f$1:Lio/bidmachine/analytics/entity/Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;->f$0:Le/a;

    iget-object v1, p0, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;->f$1:Lio/bidmachine/analytics/entity/Event;

    invoke-static {v0, v1}, Le/a;->lambda$ahfkxO02R7Rd63mR7avd9x2ZVac(Le/a;Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method
