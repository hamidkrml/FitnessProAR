//
//  diyetveriler.swift
//  BitirmeProjesi
//
//  Created by hamid on 07.12.24.
//

import Foundation


struct diyetverileri:Hashable,Identifiable{
    let id = UUID()
    let name : String
    let imageName :String
    let urlString :String
    let description :String
    
}

struct mocdata{
    static let diyetverisi = [
       
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek1",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf ",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        diyetverileri(name: "kilo Almak icin",
                      imageName: "yemek2",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek3",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek4",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek5",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek6",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek7",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek8",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek10",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek11",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek12",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
      
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek13",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek2",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek1",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
       
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek16",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek2",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
       
        diyetverileri(name: "kilo almak icin",
                      imageName: "yemek116",
                      urlString: "https://www.tvf.org.tr/wp-content/uploads/2018/04/1_kademe_spor_beslenme.pdf",
                      description: "Yemek, yaşamımızın vazgeçilmez bir parçasıdır. İnsanlar tarih boyunca beslenme ihtiyaçlarını karşılamak için farklı kültürlerde çeşitli yemek tarifleri ve yemek pişirme yöntemleri geliştirmişlerdir. Beslenme, sadece açlığı gidermekle kalmaz, aynı zamanda kültürel, sosyal ve psikolojik bir deneyim sunar."),
        
        
    ]
}
