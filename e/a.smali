.class public Le/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a$b;
    }
.end annotation


# instance fields
.field public final a:Lio/bidmachine/analytics/AnalyticsConfig;

.field public final b:Lg/a;

.field public final c:Le/a$b;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/AnalyticsConfig;Lg/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    iput-object p2, p0, Le/a;->b:Lg/a;

    new-instance p1, Le/a$b;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Le/a$b;-><init>(Lg/a;Le/a$a;)V

    iput-object p1, p0, Le/a;->c:Le/a$b;

    new-instance p1, Le/-$$Lambda$a$hY354Ek1sjoy03rZdWY1Rm8RTrE;

    invoke-direct {p1, p0}, Le/-$$Lambda$a$hY354Ek1sjoy03rZdWY1Rm8RTrE;-><init>(Le/a;)V

    iput-object p1, p0, Le/a;->d:Ljava/lang/Runnable;

    new-instance p1, Le/-$$Lambda$U3SEVW_V4EXzZ59IUNFfw2J2CwI;

    invoke-direct {p1, p0}, Le/-$$Lambda$U3SEVW_V4EXzZ59IUNFfw2J2CwI;-><init>(Le/a;)V

    invoke-static {p1}, La/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a;->a(I)V

    return-void
.end method

.method private synthetic a(Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/a;->c(Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method

.method public static synthetic lambda$ahfkxO02R7Rd63mR7avd9x2ZVac(Le/a;Lio/bidmachine/analytics/entity/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a;->a(Lio/bidmachine/analytics/entity/Event;)V

    return-void
.end method

.method public static synthetic lambda$hY354Ek1sjoy03rZdWY1Rm8RTrE(Le/a;)V
    .locals 0

    invoke-direct {p0}, Le/a;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Le/a;->b:Lg/a;

    iget-object v1, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {v1}, Lio/bidmachine/analytics/AnalyticsConfig;->getEventBatchMaxSize()I

    move-result v1

    invoke-interface {v0, v1}, Lg/a;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-lt v1, p1, :cond_0

    invoke-virtual {p0, v0}, Le/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final a(Lb/a;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Le/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {v0}, Lio/bidmachine/analytics/AnalyticsConfig;->getEventBatchMaxSize()I

    move-result v0

    invoke-static {p1, v0}, La/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Le/a;->b:Lg/a;

    invoke-interface {v1, v0}, Lg/a;->b(Ljava/util/List;)V

    new-instance v1, Lf/e;

    iget-object v2, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {v2}, Lio/bidmachine/analytics/AnalyticsConfig;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lf/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Le/a;->c:Le/a$b;

    invoke-virtual {v1, v0}, Lf/a;->a(Lf/c;)Lf/a;

    move-result-object v0

    check-cast v0, Lf/e;

    iget-object v1, p0, Le/a;->c:Le/a$b;

    invoke-virtual {v0, v1}, Lf/a;->a(Lf/b;)Lf/a;

    move-result-object v0

    check-cast v0, Lf/e;

    invoke-virtual {v0}, Lf/a;->f()Lf/a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a;->b()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Le/a;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {v1}, Lio/bidmachine/analytics/AnalyticsConfig;->getIntervalMs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, La/a;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public b(Lio/bidmachine/analytics/entity/Event;)V
    .locals 1

    new-instance v0, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;

    invoke-direct {v0, p0, p1}, Le/-$$Lambda$a$ahfkxO02R7Rd63mR7avd9x2ZVac;-><init>(Le/a;Lio/bidmachine/analytics/entity/Event;)V

    invoke-static {v0}, La/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lb/a;)Z
    .locals 1

    iget-object v0, p0, Le/a;->b:Lg/a;

    invoke-interface {v0, p1}, Lg/a;->a(Lb/a;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le/a;->b:Lg/a;

    invoke-interface {v0}, Lg/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final declared-synchronized c(Lio/bidmachine/analytics/entity/Event;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lb/a;

    iget-object v1, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {v1}, Lio/bidmachine/analytics/AnalyticsConfig;->getContext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb/a;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/entity/Event;)V

    invoke-virtual {p0, v0}, Le/a;->b(Lb/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a;->a:Lio/bidmachine/analytics/AnalyticsConfig;

    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getEventBatchSize()I

    move-result p1

    invoke-virtual {p0, p1}, Le/a;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Le/a;->a(Lb/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    monitor-exit p0

    return-void
.end method
