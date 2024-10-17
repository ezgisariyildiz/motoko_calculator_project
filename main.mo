//Hesap Makinesi Uygulaması

actor hesap_makinesi {

  var hucre : Int = 0;

  // Toplama işlemi
  public func toplama(n : Int) : async Int {
    hucre += n;
    return hucre;
  };

  // Çıkarma işlemi
  public func cikarma(n : Int) : async Int {
    hucre -= n;
    return hucre;
  };

  // Çarpma işlemi
  public func carpma(n : Int) : async Int {
    hucre *= n;
    return hucre;
  };

  // Bölme işlemi
  public func bolme(n : Int) : async ?Int {
    if (n == 0) {
      // 'null' sıfıra bölme hatasını kodlar.
      return null;
    } else {
      hucre /= n;
      return ?hucre;
    };
  };

  // Hesap makinesini temizle ve hücreyi sıfırla
  public func temizle() : async () {
    hucre := 0;
  };
};
