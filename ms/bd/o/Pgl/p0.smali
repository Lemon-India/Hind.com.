.class public final Lms/bd/o/Pgl/p0;
.super Lms/bd/o/Pgl/o0;
.source ""


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/o0;-><init>()V

    return-void
.end method

.method static synthetic a(Lms/bd/o/Pgl/p0;)J
    .locals 2

    iget-wide v0, p0, Lms/bd/o/Pgl/p0;->a:J

    return-wide v0
.end method


# virtual methods
.method protected a(J)Ljava/lang/Object;
    .locals 0

    iput-wide p1, p0, Lms/bd/o/Pgl/p0;->a:J

    new-instance p1, Lms/bd/o/Pgl/p0$pgla;

    invoke-direct {p1, p0}, Lms/bd/o/Pgl/p0$pgla;-><init>(Lms/bd/o/Pgl/p0;)V

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/frameworks/baselib/network/http/NetworkParams;->setAddSecurityFactorProcessCallback(Lcom/bytedance/frameworks/baselib/network/http/NetworkParams$AddSecurityFactorProcessCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lms/bd/o/Pgl/p0;->a:J

    const v2, 0x3000002

    invoke-static {v2, v0, v1}, Lms/bd/o/Pgl/pblb;->a(IJ)Ljava/lang/Object;

    iget-wide v5, p0, Lms/bd/o/Pgl/p0;->a:J

    const v3, 0x6000002

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1
    invoke-static/range {v3 .. v8}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lms/bd/o/Pgl/p0;->a:J

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
