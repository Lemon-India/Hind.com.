.class public Lms/bd/o/Pgl/q0;
.super Lms/bd/o/Pgl/o0;
.source ""


# instance fields
.field private a:Lcom/bytedance/retrofit2/intercept/Interceptor;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/o0;-><init>()V

    return-void
.end method

.method static synthetic a(Lms/bd/o/Pgl/q0;)J
    .locals 2

    iget-wide v0, p0, Lms/bd/o/Pgl/q0;->b:J

    return-wide v0
.end method


# virtual methods
.method protected a(J)Ljava/lang/Object;
    .locals 0

    iput-wide p1, p0, Lms/bd/o/Pgl/q0;->b:J

    new-instance p1, Lms/bd/o/Pgl/q0$pgla;

    invoke-direct {p1, p0}, Lms/bd/o/Pgl/q0$pgla;-><init>(Lms/bd/o/Pgl/q0;)V

    iput-object p1, p0, Lms/bd/o/Pgl/q0;->a:Lcom/bytedance/retrofit2/intercept/Interceptor;

    .line 1
    invoke-static {p1}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->addInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lms/bd/o/Pgl/q0;->a:Lcom/bytedance/retrofit2/intercept/Interceptor;

    invoke-static {v0}, Lcom/bytedance/ttnet/utils/RetrofitUtils;->removeInterceptor(Lcom/bytedance/retrofit2/intercept/Interceptor;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
