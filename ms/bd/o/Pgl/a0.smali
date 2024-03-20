.class final Lms/bd/o/Pgl/a0;
.super Lms/bd/o/Pgl/pblb$pgla;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bd/o/Pgl/pblb$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lms/bd/o/Pgl/y0;->a()Lms/bd/o/Pgl/y0;

    move-result-object p1

    invoke-virtual {p1}, Lms/bd/o/Pgl/y0;->b()Ljava/lang/Throwable;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length p3, p1

    const/4 p4, 0x4

    if-ge p3, p4, :cond_1

    return-object p2

    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 p5, 0x1

    :goto_0
    if-ge p5, p4, :cond_9

    aget-object v0, p1, p5

    if-eqz v0, :cond_8

    aget-object v0, p1, p5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    aget-object v0, p1, p5

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lms/bd/o/Pgl/y0;->a()Lms/bd/o/Pgl/y0;

    move-result-object v1

    aget-object v2, p1, p5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2
    :cond_6
    :goto_3
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 3
    :cond_7
    throw p2

    :cond_8
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_9
    return-object p3
.end method
