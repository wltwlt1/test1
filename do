#include <iostream>
using namespace std;
typedef struct ThreadNode{
	int data;
	struct ThreadNode *lchild,* rchild;
	int ltag,rtag;

}ThreadNode,*TreadTree;
void InTread(ThreadTree T){
	if(T!=NULL）{
		InTread(T->lchild);
		visit(T)
		InTread(T->rchild);
	}
}
ThreadNode *pre=NULL;
void visit(ThreadNode *q){
	if(q->lchild==NULL){
		q->lchild=pre;
		q->ltag=1;
	}
	
	if(pre!=NULL && pre->rchild!=NULL){
		pre->rchild=q;
		pre->rtag=1;
	}
	pre=q;
}
void preTread(ThreadNode T){
	if(T!=NULL){
		visit(T);
		if(T->ltag==0)
			preTread(T->lchild);
		preTread(T->rchild);
	}
}
void createInThread(ThreadNode T){
	pre=NULL;
	InTread(T);
	if(pre->rchild=NULL){
		pre->rchild=NULL;
		pre->rtag=1;
	}
}
ThreadNode *Firstnode(ThreadNode* p){
	while(p->ltag==0) p=p->lchild;
	return p;
}
ThreadNode *nextnode(ThreadNode* p){
	if(p->rtag!=0)
		return p->rchild;
	if(p->rtag==0)
		return Firstnode(p->rchild);
		
}
ThreadNode *PREnextnode(ThreadNode* p){
	if(p->rtag!=0)
		return p->rchild;
	if(p->rtag==0){
		if(p->ltag!=0)
			return p->rchild;
		else
			return p->lchild;
	}
		
		
}
ThreadNode *Lastnode(ThreadNode *p){
	while(p->rtag==0) p=p->rchild;
	return p;
	
}
ThreadNode *prenode(ThreadNode* p){
	if(p->ltag !=0)
		return p->lchild;
	else
		return Lastnode(p->rchild);
}
ThreadNode *PREprenode(ThreadNode* p){
	if(p->ltag !=0)
		return p->lchild;
	else
		//重新遍历
}

int main()
{
  
   return 0;
}
