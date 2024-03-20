.class final Lms/bd/o/Pgl/c0;
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v4, "173145"

    const/16 p1, 0x22

    const/4 p2, 0x0

    :try_start_0
    new-array v5, p1, [B

    const/16 p1, 0x23

    const/4 p3, 0x0

    aput-byte p1, v5, p3

    const/16 p1, 0x3a

    const/4 p4, 0x1

    aput-byte p1, v5, p4

    const/4 p1, 0x2

    const/16 p5, 0x4d

    aput-byte p5, v5, p1

    const/4 p1, 0x3

    const/16 p5, 0xb

    aput-byte p5, v5, p1

    const/4 p1, 0x4

    const/16 v0, 0x9

    aput-byte v0, v5, p1

    const/16 p1, 0x3b

    const/4 v1, 0x5

    aput-byte p1, v5, v1

    const/16 p1, 0x26

    const/4 v2, 0x6

    aput-byte p1, v5, v2

    const/4 v3, 0x7

    const/16 v6, 0x13

    aput-byte v6, v5, v3

    const/16 v3, 0x8

    const/16 v7, 0x66

    aput-byte v7, v5, v3

    const/16 v3, 0x60

    aput-byte v3, v5, v0

    const/16 v0, 0xa

    const/16 v3, 0x2e

    aput-byte v3, v5, v0

    const/16 v0, 0x36

    aput-byte v0, v5, p5

    const/16 v0, 0xc

    const/16 v3, 0x45

    aput-byte v3, v5, v0

    const/16 v0, 0xd

    aput-byte p5, v5, v0

    const/16 p5, 0xe

    aput-byte v2, v5, p5

    const/16 p5, 0xf

    const/16 v0, 0x2d

    aput-byte v0, v5, p5

    const/16 p5, 0x10

    const/16 v2, 0x30

    aput-byte v2, v5, p5

    const/16 p5, 0x11

    aput-byte v1, v5, p5

    const/16 p5, 0x12

    const/16 v1, 0x67

    aput-byte v1, v5, p5

    const/16 p5, 0x62

    aput-byte p5, v5, v6

    const/16 p5, 0x14

    const/16 v2, 0x6e

    aput-byte v2, v5, p5

    const/16 p5, 0x15

    aput-byte p1, v5, p5

    const/16 p1, 0x16

    aput-byte v3, v5, p1

    const/16 p1, 0x17

    const/16 p5, 0x4b

    aput-byte p5, v5, p1

    const/16 p1, 0x18

    aput-byte p1, v5, p1

    const/16 p5, 0x19

    aput-byte v0, v5, p5

    const/16 p5, 0x1a

    const/16 v0, 0x20

    aput-byte v0, v5, p5

    const/16 p5, 0x1b

    const/16 v3, 0x58

    aput-byte v3, v5, p5

    const/16 p5, 0x1c

    const/16 v3, 0x6f

    aput-byte v3, v5, p5

    const/16 p5, 0x1d

    const/16 v3, 0x6d

    aput-byte v3, v5, p5

    const/16 p5, 0x1e

    aput-byte v2, v5, p5

    const/16 p5, 0x1f

    aput-byte p1, v5, p5

    const/16 p1, 0x73

    aput-byte p1, v5, v0

    const/16 p1, 0x21

    aput-byte v1, v5, p1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "f8f6f0"

    :try_start_1
    new-array v5, p4, [B

    const/16 p4, 0x76

    aput-byte p4, v5, p3

    invoke-static/range {v0 .. v5}, Lms/bd/o/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    new-array p5, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p4, p5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    return-object p2
.end method
