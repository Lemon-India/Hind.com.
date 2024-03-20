.class public Lms/bd/o/Pgl/y0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lms/bd/o/Pgl/y0;


# instance fields
.field private a:I

.field private b:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lms/bd/o/Pgl/y0;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lms/bd/o/Pgl/y0;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a()Lms/bd/o/Pgl/y0;
    .locals 2

    sget-object v0, Lms/bd/o/Pgl/y0;->c:Lms/bd/o/Pgl/y0;

    if-nez v0, :cond_1

    const-class v0, Lms/bd/o/Pgl/y0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lms/bd/o/Pgl/y0;->c:Lms/bd/o/Pgl/y0;

    if-nez v1, :cond_0

    new-instance v1, Lms/bd/o/Pgl/y0;

    invoke-direct {v1}, Lms/bd/o/Pgl/y0;-><init>()V

    sput-object v1, Lms/bd/o/Pgl/y0;->c:Lms/bd/o/Pgl/y0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lms/bd/o/Pgl/y0;->c:Lms/bd/o/Pgl/y0;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Ljava/lang/Throwable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms/bd/o/Pgl/y0;->b:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lms/bd/o/Pgl/y0;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    iget v0, p0, Lms/bd/o/Pgl/y0;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lms/bd/o/Pgl/y0;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lms/bd/o/Pgl/y0;->a:I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    iput-object v0, p0, Lms/bd/o/Pgl/y0;->b:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
