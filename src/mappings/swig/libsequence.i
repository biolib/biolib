%module biolib_libsequence
%include <std_pair.i>
%include <std_string.i>
%include <std_vector.i>


%{
  #include <Sequence/Seq.hpp>
  #include <Sequence/Fasta.hpp>
  #include <Sequence/Kimura80.hpp>
  #include <Sequence/Comeron95.hpp>
  #include <Sequence/RedundancyCom95.hpp>
  #include <Sequence/SingleSub.hpp>
  #include <Sequence/Sites.hpp>
  #include <Sequence/ThreeSubs.hpp>
  #include <Sequence/TwoSubs.hpp>
  #include <Sequence/GranthamWeights.hpp>
  #include <Sequence/Unweighted.hpp>
  #include <Sequence/WeightingSchemes.hpp>
  #include <Sequence/HKA.hpp>
  #include <Sequence/Recombination.hpp>
  #include <Sequence/PolyTable.hpp>
  #include <Sequence/PolySites.hpp>
  #include <Sequence/SimData.hpp>
  #include <Sequence/SimpleSNP.hpp>
  #include <Sequence/typedefs.hpp>
  #include <Sequence/PolyTableManip.hpp>
  #include <Sequence/SeqExceptions.hpp>
  #include <Sequence/FST.hpp>
  #include <Sequence/PolySNP.hpp>
  #include <Sequence/PolySIM.hpp>
  #include <Sequence/SimData.hpp>
  #include <Sequence/SimParams.hpp>
  #include <Sequence/Coalescent/SimTypes.hpp>
  #include <Sequence/Coalescent/Mutation.hpp>
  #include <Sequence/Coalescent/FragmentsRescaling.hpp>
  #include <Sequence/Coalescent/Coalesce.hpp>
  #include <Sequence/Coalescent/Initialize.hpp>
  #include <Sequence/Coalescent/Recombination.hpp>
  #include <Sequence/Coalescent/TreeOperations.hpp>
  #include <Sequence/Coalescent/NeutralSample.hpp>
  #include <Sequence/Coalescent/DemographicModels.hpp>
  #include <Sequence/Correlations.hpp>
  #include <Sequence/Crit.hpp>
  #include <Sequence/descriptiveStats.hpp>
  #include <Sequence/shortestPath.hpp>
  #include <Sequence/SeqEnums.hpp>
  #include <Sequence/ensureFloating.hpp>
  #include <Sequence/preferFloatingTypes.hpp>
  #include <Sequence/ComplementBase.hpp>
  #include <Sequence/stateCounter.hpp>
  #include <Sequence/Portability/randomShuffleAdaptor.hpp>
%}


%constant const double CMAX = 10000;
%constant const double PRESICION = FLT_EPSILON;
%ignore Sequence::Seq::operator[];
%ignore Sequence::marginal::operator[];
#%rename(__aref__) Sequence::Seq::operator[];
#%ignore boost::noncopyable;
%rename(__aref1__) Sequence::PolyTable::operator[];
%template(Pair) std::pair<std::string, std::string>;

%rename(_print) print;
%rename(to_string) Sequence::Seq::operator std::string() const;
%rename(to_polySiteVector) Sequence::PolyTable::operator Sequence::polySiteVector() const;
%rename(std_ostream) operator<<;
%rename(chr_assgin) Sequence::chromosome::operator=;
#%rename(__aref2__) Sequence::marginal::operator[];
%ignore Sequence::newick_stream_marginal_tree::newick_stream_marginal_tree( const marginal * m );
%ignore Sequence::newick_stream_marginal_tree_impl::newick_stream_marginal_tree_impl( const marginal * m );
%rename(sfs_assgin) Sequence::sfs_times::operator=;
%rename(sfs_ref) Sequence::sfs_times::operator[];
                                
/*#define BOOST_STATIC_ASSERT( B ) \
   typedef ::boost::static_assert_test<\
      sizeof(::boost::STATIC_ASSERTION_FAILURE< (bool)( B ) >)\
      > boost_static_assert_typedef_*/

%include <Sequence/Seq.hpp>
%include <Sequence/Fasta.hpp>
%include <Sequence/Kimura80.hpp>
%import <boost/noncopyable.hpp>
%include <Sequence/Comeron95.hpp>
%include <Sequence/RedundancyCom95.hpp>
%include <Sequence/SeqEnums.hpp>
%include <Sequence/SingleSub.hpp>
%include <Sequence/Sites.hpp>
%include <Sequence/ThreeSubs.hpp>
%include <Sequence/TwoSubs.hpp>
%include <Sequence/WeightingSchemes.hpp>
%include <Sequence/GranthamWeights.hpp>
%include <Sequence/Unweighted.hpp>
%include <Sequence/HKA.hpp>
%include <Sequence/Recombination.hpp>
%include <Sequence/PolyTable.hpp>
%include <Sequence/PolySites.hpp>
%include <Sequence/SimData.hpp>
%include <Sequence/SimpleSNP.hpp>
%include <Sequence/typedefs.hpp>
%include <Sequence/PolyTableManip.hpp>
%include <Sequence/SeqExceptions.hpp>
%include <Sequence/FST.hpp>
%include <Sequence/PolySNP.hpp>
%include <Sequence/PolySIM.hpp>
%include <Sequence/SimData.hpp>
%include <Sequence/SimParams.hpp>
#%import <memory>
%include <Sequence/Coalescent/SimTypes.hpp>
%include <Sequence/Coalescent/Mutation.hpp>
%include <Sequence/Coalescent/FragmentsRescaling.hpp>
%include <Sequence/Coalescent/Coalesce.hpp>
%include <Sequence/Coalescent/Initialize.hpp>
%include <Sequence/Coalescent/Recombination.hpp>
%include <Sequence/Coalescent/TreeOperations.hpp>
%include <Sequence/Coalescent/NeutralSample.hpp>
%include <Sequence/Coalescent/DemographicModels.hpp>
%include <Sequence/Correlations.hpp>
%include <Sequence/Crit.hpp>
#%include <boost/type_traits.hpp>
#%include <boost/static_assert.hpp>
#%include <boost/type_traits/is_convertible.hpp>
#%include <Sequence/descriptiveStats.hpp>
%include <Sequence/shortestPath.hpp>
%include <Sequence/SeqEnums.hpp>
#%include <Sequence/ensureFloating.hpp>
#%include <Sequence/preferFloatingTypes.hpp>

 template <class _Arg, class _Result>
    struct unary_function
    {
      typedef _Arg argument_type;                                                
      typedef _Result result_type; 
    };

%template() std::unary_function <char, void>;

%include <Sequence/ComplementBase.hpp>
%include <Sequence/stateCounter.hpp>

 template <class _Arg1, class _Arg2, class _Result>
    struct binary_function
    {
      typedef _Arg1 first_argument_type; 
      typedef _Arg2 second_argument_type;  
      typedef _Result result_type;      
    };

%template() std::binary_function<int,uni01,int>;
%include <Sequence/Portability/randomShuffleAdaptor.hpp>


/*%extend Sequence::newick_stream_marginal_tree_impl
{
    marginal::const_iterator mi;
    const int nsam;
    std::vector<int> left,right;
    std::vector<node> tree;
    void init();
    std::ostream & parens( const int & noden,
			   std::ostream & o) const;
    newick_stream_marginal_tree_impl(const marginal & m);
    newick_stream_marginal_tree_impl(const marginal * m);
    newick_stream_marginal_tree_impl(arg::const_iterator m);
};*/

#%template(Auto_ptr) std::auto_ptr<newick_stream_marginal_tree_impl>;



%extend Sequence::Seq {
 char __aref__ (const size_type & i)
    {
    assert(i < ($self->GetSeq()).length ());
    return ($self->GetSeq())[i];
    }
};

%extend Sequence::Seq {
  char __aref__ (const size_type & i) const
    {
    assert(i < ($self->GetSeq()).length ());
    return ($self->GetSeq())[i];
    }
};

%extend Sequence::marginal{
 node __aref2__(const std::vector<node>::size_type &i)
   {
    assert(int(i) <= 2*($self->nsam) - 2);
    return ($self->tree)[i];
   }
};

%extend Sequence::marginal{
 node __aref2__(const std::vector<node>::size_type &i) const
   {
    assert(int(i) <= 2*($self->nsam) - 2);
    return ($self->tree)[i];
   }
};



