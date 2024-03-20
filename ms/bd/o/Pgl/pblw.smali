.class Lms/bd/o/Pgl/pblw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lms/bd/o/Pgl/pblv;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lms/bd/o/Pgl/pblw;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lms/bd/o/Pgl/pblw;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
